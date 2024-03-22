<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Document</title>
                <link rel="stylesheet" href="style1.css"/>
            </head>
            <body>
                <xsl:if test="count(snap_n_stick/customers/customer) > 0">
                <div>
                    <table>
                        <tr>
                            <th>Customer ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Zipcode</th>
                            <th>Registration date</th>   
                        </tr>
                        <xsl:for-each select="snap_n_stick/customers/customer">
                            <tr>
                                <td><xsl:value-of select="CustomerID"/></td>
                                <td><xsl:value-of select="firstname"/></td>
                                <td><xsl:value-of select="lastname"/></td>
                                <td><xsl:value-of select="email"/></td>
                                <td><xsl:value-of select="phone"/></td>
                                <td><xsl:value-of select="address"/></td>
                                <td><xsl:value-of select="city"/></td>
                                <td><xsl:value-of select="state"/></td>
                                <td><xsl:value-of select="zipcode"/></td>
                                <td><xsl:value-of select="registrationdate"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    </div>
                    </xsl:if>
                    <div>
                    <xsl:choose>
                        <xsl:when test="count(snap_n_stick/customers/customer) > 0">
                    <table>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer ID</th>
                            <th>Order Date</th>
                            <th>Total Amount</th>
                            <th>Payment Status</th>
                            <th>Shipment Status</th>
                            <th>Shipping Address</th>
                            <th>Billing address</th>
                            <th>Discount Code</th>
                            <th>Tax Amount</th>
                        </tr>
                        <xsl:for-each select="snap_n_stick/orders/order">
                        <xsl:sort select="totalamount"/>
                            <tr>
                                <td><xsl:value-of select="orderID"/></td>
                                <td><xsl:value-of select="customerID"/></td>
                                <td><xsl:value-of select="orderdate"/></td>
                                <td><xsl:value-of select="totalamount"/></td>
                                <td><xsl:value-of select="paymentstatus"/></td>
                                <td><xsl:value-of select="shipmentstatus"/></td>
                                <td><xsl:value-of select="shippingaddress"/></td>
                                <td><xsl:value-of select="billingaddress"/></td>
                                <td><xsl:value-of select="discountcode"/></td>
                                <td><xsl:value-of select="taxamount"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    </xsl:when>
                    <xsl:otherwise>
                        <p>No customer data available.</p>
                    </xsl:otherwise>
                </xsl:choose>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
