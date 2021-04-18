# IB-Examples

Collection of working scripts using the Interactive Brokers TWS API through  **_IB-Ruby_** 

## Setup

Its super easy to setup **_IB-Ruby_** in a _Lxc-Container_.

* Require an Demo Account
* Clone [IB-Container](https://github.com/ib-ruby/ib-container) and install one container on your hardware.
* Enter the container  (use `lxc open _container-name_`)
* Clone this respiratory
* Run the install-script in /setup

enjoy

## Console and Gateway

For interactive experiments, `console` and `gateway` scripts are included in the bin-directory


## Examples

The examples are devided into four categories

* Contract
  Scripts that deal with IB::Contracts.  
	Fetch Contract-Details, associated Options, Option-Chains, Market Price, Scanner and historical Data
* Order
  Scripts that demonstrate different trading methods.  
	Limit-Order, Bracket-, Combo-,  and Butterfly-Orders  
	Preview (what if), modify and cancel orders
* Account
  Gather Information about the account itself  
  List Balances and portfolio-positions


