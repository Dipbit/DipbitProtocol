/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
namespace * com.dipbit.model
/**
*  transaction mode
**/
enum Category{
    /** two-step transaction mode*/
    CREATE_AND_SIGN=1,
    /** one-step transaction mode*/
    DIRECT_SEND=2
}

/**
* status of transaction
**/
enum TransactionStatus{
    /** init status*/
    CREATED=0,
    /** the transaction has been sent to public chain */
    SENT=1,
    /** the transaction has been confirmed on public chain, this is the success status*/
    CONFIRMED=2,
    /** failed status */
    FAILED=3,
    /** failed status on Dipbit platform */
    EXPIRED=4
}

enum Direction{
    IN=0,
    OUT=1,
}

enum MemoType{
    DEFAULT=0,
    AUTO_GENERATE_SEQUENCE=1,
}

/***
* the request for launching a transaction
**/
struct SendRequest{
    /** the currency name of coin, which will be BTC for Bitcoin and ETH for Ethereum */
    1:string currencuy,
    /** transaction ID, for one-step transaction mode, this is optional */
    2:optional string txId,
    /** the transaction amount, must be greater then ZERO*/
    3:BigDecimal amount,
    /** transaction fee, default is "0.0" */
    4:BigDecimal fee,
    /** transaction details  */
    5:list<TransactionIO> ioList,
    /** extra parameters, reserved for further use, in most cases, this field will not be used*/
    6:optional map<string,string> properties,
}

struct CoinChannel{
    1:string id,
    2:string name,
    3:string currency,
    4:i32 status,
    5:string rpcURL,
    6:string rpcPort,
    7:string rpcPassword,
    8:string rpcUser,
    9:string config,
    10:string extra
}

struct TransactionParam{
    1:list<TransactionIO> addressList,
    2:string channelId,
    3:map<string,string> properties
}

struct TransactionIO{
    1:string address,
    2:string memo,
    3:BigDecimal amount,
    4:Direction direction,
}

struct ChainTransaction{
    1:Category category,
    2:string txId,
    3:string currency,
    4:TransactionStatus status,
    5:BigDecimal fee,
    6:i32 confirmations,
    7:string blockHash,
    8:string blockIndex,
    9:i64 blockTime,
    10:i64 receiveTime,
    11:string txResult,
    12:list<TransactionIO> ioList,
    13:map<string,string> properties,
}

struct Address{
    1:string address,
    2:string memo,
    3:MemoType memoType = MemoType.DEFAULT
}

typedef string BigDecimal


struct QueryParam{
    1:i64 startReceiveTime,
    2:i64 endReceiveTime,
    3:string startBlockHash,
    4:string startBlockIndex
}