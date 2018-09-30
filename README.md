# product

##### Description
`product` (i.e. multiplication) operator computes the product of a set of points.

##### Usage

Input projection|.
---|---
`y-axis`           | is the input data for the multiplication per cell 

Input parameters|.
---|---
`remove NA`        | boolean, default is `FALSE`

Output relations|.
---|---
`product`          | numeric, product of the input values

##### Details
The operator takes all the values of a cell and calculates their product. The computation is done per cell. There is one value calculated and returned for each of the input cell.

#### References


##### See Also

[sum_operator](https://github.com/tercen/sum_operator), [ratio_operator](https://github.com/tercen/ratio_operator)


#### Examples
