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
*  Catetory
**/
enum Category{
    UNSPEND=0,
    CREATE_AND_SIGN=1,
    DIRECT_SEND=2
}

enum TransactionStatus{
    CREATED=0,
    SENT=1,
    CONFIRMED=2,
    FAILED=3,
    EXPIRED=4
}

struct SendRequest{

}

struct CoinChannel{

}

struct TransactionConfig{

}

struct ChainTransaction{
    1:Category category,
}

struct Address{

}

typedef string BigDecimal


struct FetchChainTxParam{

}