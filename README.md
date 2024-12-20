# Store App

A Flutter-based store application that fetches product data from an API, displays it in a user-friendly interface, and allows clients to update product information via a dedicated product page.

## Features

- **Product Listing**: Displays a list of products fetched from an API.
- **Product Details**: Shows detailed information about each product.
- **Product Update**: Allows clients to edit and update product information directly from the product page.
- **Real-Time Sync**: Changes made to the product information are updated in real-time on the server.

## API

The app interacts with a RESTful API to fetch and update product data. Expected endpoints:

- **GET** `/products`: Retrieves the list of products.
- **GET** `/products/{id}`: Fetches details of a single product.
- **PUT** `/products/{id}`: Updates the specified product with new data.

## Technologies

- **Flutter**: For building the cross-platform app.
- **HTTP**: To handle API requests.
