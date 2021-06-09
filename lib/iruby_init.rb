require 'bundler/setup'
require 'ib-gateway'
require 'ib/symbols'
#require 'ib/market-price'
#require 'ib/option-chain'
#require 'ib/option-greeks'
#require 'ib/eod'

require_relative 'config'
class Array
  # enables calling members of an array. which are hashes  by it name
  # i.e
  #
  #  2.5.0 :006 > C.received[:OpenOrder].local_id
  #   => [16, 17, 21, 20, 19, 8, 7]
  #   2.5.0 :007 > C.received[:OpenOrder].contract.to_human
  #    => ["<Bag: IECombo SMART USD legs:  >", "<Stock: GE USD>", "<Stock: GE USD>", "<Stock: GE USD>", "<Stock: GE USD>", "<Stock: WFC USD>", "<Stock: WFC USD>"]
  #
  # its included only in the notebook:w, for inspection purposes

  def method_missing(method, *key)
    unless method == :to_hash || method == :to_str #|| method == :to_int
      return self.map{|x| x.public_send(method, *key)}
    end

  end
end # Array

# Connect to IB TWS.
 G = IB::Gateway.new **Init.params  
 C =  G.tws
  # Subscribe to TWS alerts/errors and contract data end marker
 C.subscribe(:Alert) { |msg| puts msg.to_human }
 
  puts  "----> G    points to the Gateway-Instance"
	puts  "----> C    points to the Connection-Instance"
  if G.clients.size == 1
    U = G.clients.first
    puts  "----> U    points to the User-Account"
  else
    puts  "----> Multible accounts detected"
    puts  "----> G.clients  points to the User-Accounts"
  end

include IB

puts "Namespace is IB !"
