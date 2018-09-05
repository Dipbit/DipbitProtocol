# Models Specification
## Category
```thrift
enum Category{
    CREATE_AND_SIGN=1,
    DIRECT_SEND=2
}
```
Category is the transaction mode. <br/>
In Dipbit platform, two transaction modes will be supported, the first mode is one-step transaction mode, 
the other is two-step transaction mode. <br/>
Two-step transaction mode means when a transaction need to be sent to public chain, it can be constructed firstly, 
and additional operations like signing the transaction, saving the transaction to database can be done before the 
second step(sending to public chain). <br/>
One-step transaction mode means when a transaction need to be sent to public chain, only the send method is needed to be called, 
<br/>
In Category, CREATE_AND_SIGN is the Two-Step transaction mode, DIRECT_SEND is the One-Step transaction mode
