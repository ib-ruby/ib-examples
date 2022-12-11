# IB-Examples

Collection of working scripts using the Interactive Brokers TWS API through  **_IB-Ruby_** 

## Setup

Its super easy to setup **_IB-Ruby_** in a _Lxc-Container_.

* Require an Demo Account
* Clone [IB-Container](https://github.com/ib-ruby/ib-container) and install one container on your hardware.
* Enter the container  (use `lxc open _container-name_`)
* ib-examples is included


enjoy.

Alternatively

* clone this respository
* run the install-script in /setup

## Console and Gateway

For interactive experiments, `console` and `gateway` scripts are included in the bin-directory


## Examples

The examples are devided into three categories

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

* Experimental Jupyter Notebooks are included

