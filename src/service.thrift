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
namespace * com.dipbit.service
include 'models.thrift'

exception NotSupportOperationException{

}

service TransactionSerivce{
    models.SendRequest create(1:models.CoinChannel channel, 2:models.TransactionConfig config),
    models.ChainTransaction send(1:models.CoinChannel channel, 2:models.SendRequest ctSource),

    models.ChainTransaction queryTransaction(1:models.CoinChannel channel, 2:models.ChainTransaction chainTransaction),
    list<models.ChainTransaction> fetchChainTxs(1:models.CoinChannel channel, 2:models.FetchChainTxParam fetchChainTxParam),
    map<models.Address, models.BigDecimal> getBalance(1:models.CoinChannel channel, 2:list<models.Address> account),
    models.TransactionStatus confirmStatus(1:models.ChainTransaction chainTransaction, 2:models.CoinChannel channel),

    models.Address createAddress(1:models.CoinChannel channel, 2:string account),
    map<string, models.Address> batchCreateAddresses(1:models.CoinChannel channel, 2:list<string> accounts),
    bool validateAddress(1:models.CoinChannel channel, 2:models.Address address),

    string currency(),
    models.Category category(),

    models.ChainTransaction processTransaction(1:models.CoinChannel channel, 2:map<string, string> params),
}
