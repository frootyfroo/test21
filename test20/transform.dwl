%dw 2.0
output json
// here i use the map function for used to transform the data contained in an array.and i call the invoices as the item and value to print along with allocations 
var invoices = [
  {
    "invoiceId": 1,
    "amount":    100 },
  {
    "invoiceId": 2,
    "amount":    200 },
  {
    "invoiceId": 3,
    "amount":    300 }] 
var allocations = [
  {
    "allocationId":     1,
    "invoiceId":        1,
    "allocationAmount": 50 },
  {
    "allocationId":     2,
    "invoiceId":        1,
    "allocationAmount": 50 },
  {
    "allocationId":     3,
    "invoiceId":        2,
    "allocationAmount": 100 },
  {
    "allocationId":     4,
    "invoiceId":        2,
    "allocationAmount": 100 },
  {
    "allocationId":     5,
    "invoiceId":        3,
    "allocationAmount": 150 },
  {
    "allocationId":     6,
    "invoiceId":        3,
    "allocationAmount": 150 }]
---
invoices map(item, index) -> {
    invoiceId: item.invoiceId,
    amount: item.amount,
    allocations: allocations filter ((item1, index1) -> item1.invoiceId == item.invoiceId)
}

//here i us ethe filter function  filter the values based on matching expression.This function can be applied to an array. It iterates the array and matches the values with the expression.and i call the key value PAIRS AS item1 and index 1 because we are having two inputs we need merge and allocate two inputs by using filter and map