# Models Specification
## Category
```thrift
enum Category{
    CREATE_AND_SIGN=1,
    DIRECT_SEND=2
}
```
`Category` is the transaction mode. <br/>
On Dipbit platform, two transaction modes will be supported, the first mode is one-step transaction mode, 
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


