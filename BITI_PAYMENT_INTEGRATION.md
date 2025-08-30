# Biti Payment Integration Documentation

## Overview
Biti is a digital wallet payment solution that provides secure payment processing for applications. This document outlines the integration process for implementing Biti payments in the Multi-Service App.

## Test Environment Setup

### Test User Credentials
- **User ID**: 618629126
- **Password**: Test@User#47BB36
- **Wallet PIN**: 1212

### API Configuration
- **Documentation**: https://docs.biti.so/
- **Base URL**: https://app.biti.so/
- **Environment**: sandbox
- **Merchant ID**: TEST_16D9F8A47BB3C96C
- **API Key**: n1-oPRJtKUH0j6YWut42OpKobLwYsCHK

## API Endpoints

### 1. Initiate Payment

**Endpoint**: `POST https://app.biti.so/api/method/initiate-payment`

**Description**: Creates a new payment request and returns a secure checkout URL for customers.

#### Headers
```http
Content-Type: application/json
X-Environment: sandbox
X-Merchant-Key: TEST_16D9F8A47BB3C96C
X-API-Key: n1-oPRJtKUH0j6YWut42OpKobLwYsCHK
```

#### Request Body
```json
{
  "cancel_url": "string",
  "success_url": "string", 
  "ipn_url": "string",
  "client_reference_id": "string",
  "payment_amount": 0,
  "description": "string",
  "currency_code": "string",
  "customer_email": "string",
  "customer_phone": "string"
}
```

#### Parameters
- **cancel_url** (required): URL to redirect if payment is cancelled
- **success_url** (required): URL to redirect after successful payment
- **ipn_url** (optional): Webhook notification URL
- **client_reference_id** (required): Unique reference ID for the session
- **payment_amount** (required): Payment amount (minimum 0.00)
- **description** (optional): Payment description
- **currency_code** (required): 3-letter currency code (USD, SOS, etc.)
- **customer_email** (optional): Customer email for prefilling
- **customer_phone** (optional): Customer phone for prefilling

#### Response (200 - Success)
```json
{
  "status": true,
  "code": "OK",
  "payload": {
    "payment_url": "http://app.biti.so/payment/checkout/4pdecig5h9",
    "info": {
      "transaction_id": "4pdecig5h9",
      "amount": 1.0,
      "currency": "USD",
      "expires_at": "2025-08-24 17:29:40.351532"
    }
  }
}
```

#### Response Fields
- **status** (boolean, required): Indicates if the request was successful
- **code** (string, required): Response code ("OK" for success)
- **payload** (object, required): Contains payment information
  - **payment_url** (string, required): Secure checkout URL for customer
  - **info** (object, required): Payment details
    - **transaction_id** (string, required): Unique transaction identifier
    - **amount** (number, required): Payment amount
    - **currency** (string, required): Currency code
    - **expires_at** (string, required): Payment expiration timestamp

#### Error Response (403 - Invalid Credentials)
```json
{
  "status": false,
  "code": "INVALID_CREDENTIALS",
  "message": "Invalid credentials",
  "detail_error": "INVALID_CREDENTIALS"
}
```

#### Error Response Fields
- **status** (boolean, required): Always false for errors
- **code** (string, required): Error code identifier
- **message** (string, required): Human-readable error message
- **detail_error** (string, required): Detailed error information

### 2. Verify Payment

**Endpoint**: `GET https://app.biti.so/api/method/verify-payment`

**Description**: Verifies the status of a payment transaction.

#### Headers
```http
Content-Type: application/json
X-Environment: sandbox
X-Merchant-Key: TEST_16D9F8A47BB3C96C
X-API-Key: n1-oPRJtKUH0j6YWut42OpKobLwYsCHK
```

#### Query Parameters
- **trx_id** (required): BitiWallet transaction ID (e.g., hm8hbk65bd)

#### Request Body
```json
{}
```

#### Response (200 - Success - Payment Completed)
```json
{
    "status": true,
    "code": "OK",
    "payload": {
        "status": "success",
        "trx_id": "hm8hbk65bd",
        "client_reference_id": "628126",
        "merchant": "M-919CF908CF32",
        "currency": "USD",
        "amount": 1.0,
        "fee": 0.0,
        "net_amount": 1.0,
        "customer": {
            "biti_upi": "",
            "id": "618629126@biti",
            "email": "me@engacs.pw",
            "phone": "+252618629126"
        },
        "description": "",
        "created_at": "2025-08-21T22:03:22.398675Z",
        "updated_at": "2025-08-24T11:59:26.740358Z"
    }
}
```

#### Response Fields (Success)
- **status** (boolean, required): Indicates if the request was successful
- **code** (string, required): Response code ("OK" for success)
- **payload** (object, required): Contains payment verification details
  - **status** (string, required): Payment status ("success" for completed payments)
  - **trx_id** (string, required): BitiWallet transaction ID
  - **client_reference_id** (string, required): Your unique reference ID
  - **merchant** (string, required): Merchant identifier
  - **currency** (string, required): Payment currency
  - **amount** (number, required): Original payment amount
  - **fee** (number, required): Transaction fee
  - **net_amount** (number, required): Net amount after fees
  - **customer** (object, required): Customer information
    - **biti_upi** (string, required): Biti UPI identifier
    - **id** (string, required): Customer ID
    - **email** (string, required): Customer email
    - **phone** (string, required): Customer phone number
  - **description** (string, required): Payment description
  - **created_at** (string, required): Payment creation timestamp
  - **updated_at** (string, required): Last update timestamp

#### Response (200 - Payment Still Initiated)
```json
{
    "status": true,
    "code": "OK",
    "payload": {
        "status": "Initiated",
        "merchant": "M-919CF908CF32",
        "trx_id": "pm4o69ov1h",
        "client_reference_id": "62812622",
        "message": "Payment is still Initiated."
    }
}
```

#### Response Fields (Initiated)
- **status** (boolean, required): Always true for successful API calls
- **code** (string, required): Response code ("OK")
- **payload** (object, required): Contains payment status information
  - **status** (string, required): Payment status ("Initiated" for pending payments)
  - **merchant** (string, required): Merchant identifier
  - **trx_id** (string, required): BitiWallet transaction ID
  - **client_reference_id** (string, required): Your unique reference ID
  - **message** (string, required): Status description message

## Implementation Guidelines

### 2. Payment Flow
1. **Initiate Payment**: Call the initiate-payment endpoint with order details
2. **Redirect Customer**: Direct customer to the returned payment_url
3. **Handle Callbacks**: Process success/cancel URL redirects
4. **Verify Payment**: Use verify-payment endpoint to confirm transaction status
5. **Update Order**: Update order status based on payment verification

----
Detail request
----

Initiate Payment
POST
https://app.biti.so/api/method/initiate-payment
Create a new payment request and get a secure checkout URL for your customer. This endpoint works in both sandbox and production environments based on your X-Environment header.
Request
Header Params
Content-Type
string 
required
Example:
application/json
X-Environment
enum<string> 
required
API environment mode
Allowed values:
sandbox
production
X-Merchant-Key
string 
required
Your Merchant ID (sandbox: test_ prefix, production: no prefix)
X-API-Key
string 
required
Your API Key (sandbox: test_ prefix, production: no prefix)
Body Params
application/json
cancel_url
string 
required
The URL the customer will be directed to if they decide to cancel payment and return to your website.
success_url
string 
required
The URL the customer will be directed to after the payment or subscription creation is successful.
ipn_url
string 
optional
Webhook notification URL (same URL for both environments)
client_reference_id
string 
required
A unique string to reference the Checkout Session. This can be a customer ID, a cart ID, or similar, and can be used to reconcile the Session with your internal systems.
payment_amount
number 
required
Payment amount (minimum 0.00)
description
string 
optional
currency_code
string 
required
3-letter currency code (USD, SOS, etc.)
customer_email
string 
optional
If provided, this value will be used when the Customer object is created. If not provided, customers will be asked to enter their email address. Use this parameter to prefill customer data if you already have an email on file. To access information about the customer once the payment flow is complete, use the customer attribute.
customer_phone
string 
optional
If provided, this phone number will be used to prefill the Customer object during payment creation.
If not provided, the customer will be prompted to enter their phone number manually.
Use this parameter when you already have the customer’s phone number on file (e.g., from registration or previous orders).
After the payment is complete, you can retrieve the customer’s phone number from the customer attribute in the response.
Example
{
    "cancel_url": "string",
    "success_url": "string",
    "ipn_url": "string",
    "client_reference_id": "string",
    "payment_amount": 0,
    "description": "string",
    "currency_code": "string",
    "customer_email": "string",
    "customer_phone": "string"
}
Request Code Samples
var headers = {
   'X-Environment': '',
   'X-Merchant-Key': '',
   'X-API-Key': '',
   'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse('https://app.biti.so/api/method/initiate-payment'));
request.body = json.encode({
   "cancel_url": "string",
   "success_url": "string",
   "ipn_url": "string",
   "client_reference_id": "string",
   "payment_amount": 0,
   "description": "string",
   "currency_code": "string",
   "customer_email": "string",
   "customer_phone": "string"
});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
   print(await response.stream.bytesToString());
}
else {
   print(response.reasonPhrase);
}

Responses
🟢200
Success
application/json
status
boolean 
required
code
string 
required
payload
object 
required
payment_url
string 
required
info
object 
required
Example
{
    "status": true,
    "code": "OK",
    "payload": {
        "payment_url": "http://app.biti.so/payment/checkout/4pdecig5h9",
        "info": {
            "transaction_id": "4pdecig5h9",
            "amount": 1.0,
            "currency": "USD",
            "expires_at": "2025-08-24 17:29:40.351532"
        }
    }
}


🟠403
INVALID_CREDENTIALS
application/json
status
boolean 
required
code
string 
required
message
string 
required
detail_error
string 
required
Example
{
    "status": false,
    "code": "INVALID_CREDENTIALS",
    "message": "Invalid credentials",
    "detail_error": "INVALID_CREDENTIALS"
}

----

Verify Payment
GET
https://app.biti.so/api/method/verify-payment
Create a new payment request and get a secure checkout URL for your customer. This endpoint works in both sandbox and production environments based on your X-Environment header.
Request
Query Params
trx_id
string 
required
BitiWallet transaction ID (e.g., hm8hbk65bd)
Header Params
Content-Type
string 
required
Example:
application/json
X-Environment
enum<string> 
required
API environment mode
Allowed values:
sandbox
production
X-Merchant-Key
string 
required
Your Merchant ID (sandbox: test_ prefix, production: no prefix)
X-API-Key
string 
required
Your API Key (sandbox: test_ prefix, production: no prefix)
Body Params
application/json
object
 
{0}
Example
{}
Request Code Samples
var headers = {
   'X-Environment': '',
   'X-Merchant-Key': '',
   'X-API-Key': '',
   'Content-Type': 'application/json'
};
var request = http.Request('GET', Uri.parse('https://app.biti.so/api/method/verify-payment?trx_id='));
request.body = json.encode({});
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
   print(await response.stream.bytesToString());
}
else {
   print(response.reasonPhrase);
}
Responses
🟢200
Success
application/json
status
boolean 
required
code
string 
required
payload
object 
required
status
string 
required
trx_id
string 
required
client_reference_id
string 
required
merchant
string 
required
currency
string 
required
amount
integer 
required
fee
integer 
required
net_amount
integer 
required
customer
object 
required
description
string 
required
created_at
string 
required
updated_at
string 
required
Example
{
    "status": true,
    "code": "OK",
    "payload": {
        "status": "success",
        "trx_id": "hm8hbk65bd",
        "client_reference_id": "628126",
        "merchant": "M-919CF908CF32",
        "currency": "USD",
        "amount": 1.0,
        "fee": 0.0,
        "net_amount": 1.0,
        "customer": {
            "biti_upi": "",
            "id": "618629126@biti",
            "email": "me@engacs.pw",
            "phone": "+252618629126"
        },
        "description": "",
        "created_at": "2025-08-21T22:03:22.398675Z",
        "updated_at": "2025-08-24T11:59:26.740358Z"
    }
}

🟢200
Error
application/json
status
boolean 
required
code
string 
required
payload
object 
required
status
string 
required
merchant
string 
required
trx_id
string 
required
client_reference_id
string 
required
message
string 
required
Example
{
    "status": true,
    "code": "OK",
    "payload": {
        "status": "Initiated",
        "merchant": "M-919CF908CF32",
        "trx_id": "pm4o69ov1h",
        "client_reference_id": "62812622",
        "message": "Payment is still Initiated."
    }
}
