# Acme Widget Co

## Introduction

This project implements a shopping basket designed to handle product catalogs, delivery charges, and promotional offers (discounts). The system supports products with specified prices and applies delivery cost rules based on the total order value.

### Technologies Used

- **Strategy Pattern:** I used the Strategy pattern to implement an e-commerce site capable of handling products, discounts, and delivery charges dynamically.
- **Auto Load:** Added auto-loading path functionality so that we don't need to require each file manually.
- **Classes and Their Roles:**
    - ***Product:*** Represents real-life products.
    - ***Discount:*** Handles discounts dynamically. You can deactivate any discount at any time. Discounts are categorized into two major types:
        - Total Threshold Discount (applies to the total amount)
        - Product Discount (applies to individual products)
    - ***Delivery Charges:*** Delivery charges are handled dynamically, allowing for the addition or removal of delivery charge rules in the future.



## Installation
### Prerequisites

Ensure you have the following installed on your system:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Setup

1. **Clone the Repository**

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ``` 
2. **Build docker image**
    ```bash
    docker build -t myapp .
    ```
3. **Run test cases**
    ```bash
    docker run --rm myapp rspec
    ```
4. **Run app**
    ```bash
    docker run --rm myapp ruby main.rb
    ```
