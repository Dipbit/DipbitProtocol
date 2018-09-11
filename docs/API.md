# API Specification
## com.dipbit.service.TransactionService
The `com.dipbit.service.TransactionService` contains 12 methods, on two step transaction mode all of the must be implemented;
on one step transaction mode `create` should throw `NotSupportOperationException`. <br/>
The use case diagram shows below:<br/>
![Use Case Diagram of TransactionService](https://raw.githubusercontent.com/Dipbit/DipbitProtocol/master/docs/Diagrams-TransactionService.jpg)

Below is the method list of `com.dipbit.service.TransactionService`, method explanation can be found inside [service.thrift](https://github.com/Dipbit/DipbitProtocol/blob/master/src/service.thrift) ,
the related models document can be found at [Models.md](https://github.com/Dipbit/DipbitProtocol/blob/master/docs/Models.md) and the definition inside [models.thrift](https://github.com/Dipbit/DipbitProtocol/blob/master/src/models.thrift) 
1. create
2. send
3. queryTransaction
4. queryTransactions
5. getBalance
6. confirmStatus
7. createAddress
8. batchCreateAddresses
9. validateAddress
10. currency
11. category
12. processTransaction

The reference Java implementation can be found at [DipbitProtocolDemo](https://github.com/Dipbit/DipbitProtocolDemo)
