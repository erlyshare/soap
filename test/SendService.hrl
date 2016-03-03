%%
%% %CopyrightBegin%
%%
%% Copyright Hillside Technology Ltd. 2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%%

%% This file was generated by soap:erlang2wsdl. It is included in the repository
%% because the tests need it.

%% generated by soap from: e:/e_soap/soap/test/soap_SUITE_data/SendService.wsdl
%% for service "SendService" and port "SendServiceSoap"
%% using options: [{service,"SendService"},{port,"SendServiceSoap"},{generate,both},{namespaces,[{"com.esendex.ems.soapinterface",undefined}]},{http_server,soap_server_cowboy_1},{server_name,"sendService_test_server"},{http_client,soap_client_ibrowse},{client_name,"sendService_test_client"},{strict,true}]

%% This file contains record and type decarations that are used by the WSDL.
%%
%% It also contains a macro 'INTERFACE' that is used to make information
%% about the WSDL available to the SOAP implementation.
%%
%% It is possible (and in some cases necessary) to change the name of the
%% record fields.
%%
%% It is possible to add default values, but be aware that these will only
%% be used when *writing* an xml document.

%% xsd:QName values are translated to #qname{} records.
-record(qname, {uri :: string(),
                localPart :: string(),
                prefix :: string(),
                mappedPrefix :: string()}).



-record(sendMessageResponse, {
	sendMessageResult :: string() | undefined}).

-type sendMessageResponse() :: #sendMessageResponse{}.


-record(sendMessage, {
	recipient :: string() | undefined,
	body :: string() | undefined,
	type :: string()}).

-type sendMessage() :: #sendMessage{}.


-record(results, {
	result :: [string()] | undefined}).

-type results() :: #results{}.


-record(sendMessageMultipleRecipientsResponse, {
	results :: results() | undefined}).

-type sendMessageMultipleRecipientsResponse() :: #sendMessageMultipleRecipientsResponse{}.


-record(recipients, {
	recipient :: [string()] | undefined}).

-type recipients() :: #recipients{}.


-record(sendMessageMultipleRecipients, {
	recipients :: recipients() | undefined,
	body :: string() | undefined,
	type :: string()}).

-type sendMessageMultipleRecipients() :: #sendMessageMultipleRecipients{}.
-define(INTERFACE, {interface,"SendService",'SendService','1.1',
                    soap_client_ibrowse,soap_server_cowboy_1,
                    sendService_test_server,sendService_test_client,[],
                    "http://schemas.xmlsoap.org/soap/envelope/",undefined,
                    "http://localhost:8080/soap/SendService",
                    "SendServiceSoap","SendServiceSoap","SendServiceSoap",
                    [{op,"SendMessage",'SendMessage',
                      "com.esendex.ems.soapinterface/SendMessage",
                      request_response,sendMessage,sendMessageResponse,
                      undefined},
                     {op,"SendMessageMultipleRecipients",
                      'SendMessageMultipleRecipients',
                      "com.esendex.ems.soapinterface/SendMessageMultipleRecipients",
                      request_response,sendMessageMultipleRecipients,
                      sendMessageMultipleRecipientsResponse,undefined}],
                    {model,
                     [{type,'_document',sequence,
                       [{el,
                         [{alt,sendMessageMultipleRecipientsResponse,
                           sendMessageMultipleRecipientsResponse,[],1,1,true,
                           undefined},
                          {alt,sendMessageMultipleRecipients,
                           sendMessageMultipleRecipients,[],1,1,true,
                           undefined},
                          {alt,sendMessageResponse,sendMessageResponse,[],1,
                           1,true,undefined},
                          {alt,sendMessage,sendMessage,[],1,1,true,undefined}],
                         1,1,undefined,2}],
                       [],undefined,undefined,1,1,1,false,undefined},
                      {type,sendMessageResponse,sequence,
                       [{el,
                         [{alt,sendMessageResult,
                           {'#PCDATA',char},
                           [],1,1,true,undefined}],
                         0,1,undefined,2}],
                       [],undefined,undefined,2,1,1,undefined,undefined},
                      {type,sendMessage,sequence,
                       [{el,
                         [{alt,recipient,
                           {'#PCDATA',char},
                           [],1,1,true,undefined}],
                         0,1,undefined,2},
                        {el,
                         [{alt,body,{'#PCDATA',char},[],1,1,true,undefined}],
                         0,1,undefined,3},
                        {el,
                         [{alt,type,{'#PCDATA',char},[],1,1,true,undefined}],
                         1,1,undefined,4}],
                       [],undefined,undefined,4,1,1,undefined,undefined},
                      {type,results,sequence,
                       [{el,
                         [{alt,result,{'#PCDATA',char},[],1,1,true,undefined}],
                         0,unbound,undefined,2}],
                       [],undefined,undefined,2,1,1,undefined,undefined},
                      {type,sendMessageMultipleRecipientsResponse,sequence,
                       [{el,
                         [{alt,results,results,[],1,1,true,undefined}],
                         0,1,undefined,2}],
                       [],undefined,undefined,2,1,1,undefined,undefined},
                      {type,recipients,sequence,
                       [{el,
                         [{alt,recipient,
                           {'#PCDATA',char},
                           [],1,1,true,undefined}],
                         0,unbound,undefined,2}],
                       [],undefined,undefined,2,1,1,undefined,undefined},
                      {type,sendMessageMultipleRecipients,sequence,
                       [{el,
                         [{alt,recipients,recipients,[],1,1,true,undefined}],
                         0,1,undefined,2},
                        {el,
                         [{alt,body,{'#PCDATA',char},[],1,1,true,undefined}],
                         0,1,undefined,3},
                        {el,
                         [{alt,type,{'#PCDATA',char},[],1,1,true,undefined}],
                         1,1,undefined,4}],
                       [],undefined,undefined,4,1,1,undefined,undefined}],
                     [{ns,"com.esendex.ems.soapinterface",undefined,qualified},
                      {ns,"http://www.w3.org/2001/XMLSchema","xsd",qualified}],
                     "com.esendex.ems.soapinterface",[],false,skip},
                    1,
                    [{"com.esendex.ems.soapinterface",undefined}]}).