# Models Specification
## Category
```thrift
enum Category{
    CREATE_AND_SIGN=1,
    DIRECT_SEND=2
}
```
`Category` is the transaction mode. <br/>
On Dipbit platform, two transaction modes are supported, the first is one-step transaction mode, 
the other is two-step transaction mode. <br/>
Two-step transaction mode means when a transaction need to be sent to public chain, it can be constructed firstly, 
and additional operations like signing the transaction, saving the transaction to database can be done before the 
second step (sending it to public chain). <br/>
In one-step transaction mode, a transaction will be created in wallet and will be sent to public chain after creating immediately. <br/>
`CREATE_AND_SIGN` is the two-step transaction mode.<br/>
Sequence Diagram: ![State Diagram of TransactionStatus](https://raw.githubusercontent.com/Dipbit/DipbitProtocol/master/docs/Diagrams-TwoStepTransactionSequenceDiagram.png)

`DIRECT_SEND` is the one-step transaction mode.<br/>
Sequence Diagram: ![State Diagram of TransactionStatus](https://raw.githubusercontent.com/Dipbit/DipbitProtocol/master/docs/Diagrams-OneStepTransactionSequenceDiagram.png)


## TransactionStatus
`TransactionStatus` is an enum which indicate the status of a transaction sent to public chain. <br/>
`CREATED` the transaction has been created and not been sent to public chain. <br/>
`SENT` the transaction has been sent to public chain. <br/>
`CONFIRMED` the transaction has been confirmed other quorums on public chain. The number of quorums may vary from different chain. <br/>
`FAILED` the transaction has been confirmed to be failed and will not be processed any more on public chain. <br/>
`EXPIRED` the transaction will be mark as failed on Dipbit platform and will not be processed any more on Dipbit platform. <br/>

State Diagram: ![State Diagram of TransactionStatus](https://raw.githubusercontent.com/Dipbit/DipbitProtocol/master/docs/Diagrams-TransactionStatusStateDiagram.png)

## ChainTransaction
`ChainTransaction` is the transaction information returned by wallet which contains the transaction details and `TransactionIO`.
 The transaction detail will include transaction ID, transaction fee, confirmation status, block hash etc. 

## TransactionIO
For each transaction, there will be numbers of sending or receiving items called `TrnasactionIO`. A `TrnasactionIO` 
represents that an address will send or receive some amount digital crypto currency. <br/>
Take Bitcoin transaction as an example:<br/>
Transaction _bdd8bce4883676324ebb985cf4fb56d006f658aa75cfbc61f19844bbec48abf0_ includes 8 inputs (UTXO) and 2 outputs.<br/>
As in `TransactionIO`, the 8 inputs convert to 2 `TransactionIO` based on the addresses, 2 outputs convert to 2 `TransactionIO`<br/>
This diagram illustrates how Bitcoin transaction convert to `TransactionIO`: ![State Diagram of TransactionStatus](https://raw.githubusercontent.com/Dipbit/DipbitProtocol/master/docs/Diagrams-TransactionIO.jpg)
In `TransactionIO`, the property `direction` means the address sending digital crypto currency(OUT) or receiving digital crypto currency(IN)

## 

