# Apollo Server + Prisma Template

This template shows how to implement a **GraphQL server with JavaScript (Node.js)** based on [Prisma Client](https://github.com/prisma/prisma2/blob/master/docs/prisma-client-js/api.md), [apollo-server](https://www.apollographql.com/docs/apollo-server/). It is based on a MySQL database.

## How to use
### 0. Prerequisites
* Node.js installed on your machine
* a MySQL database server running

### 1. Download this template and install dependencies
Clone this repository:
```
clone git@github.com:kimchhickey/apollo-prisma-server-template.git
```
Install npm dependencies
```
cd apollo-prisma-server-template
npm install
```

### 2. Prepare your database
To connect your database, you need to set the environment variable `url` in `prisma/.env`.
```
DATABASE_URL="mysql://johndoe:randompassword@localhost:3306/mydb"
```
And import `schema.sql` file on your database.

### 3. Generate Prisma Client
```
npx prisma generate
```

### 4. Run Apollo Server
```
npm run start
```

### 5. Test GraphQL API
Laucnh a browser http://localhost:4000, and query the examples below.
```
// Query Example 1. Fetch one user
{
  user(id: 1) {
    id
    name
    email
  }
}

// Result
{
  "data": {
    "user": {
      "id": "1",
      "name": "Alice",
      "email": "alice@greenlabs.co.kr"
    }
  }
}

```
```
// Query Example 2. Fetch all users's id and name
{
  users {
    id
    name
  }
}

// Result
{
  "data": {
    "users": [
      {
        "id": "1",
        "name": "Alice"
      },
      {
        "id": "2",
        "name": "Bob"
      },
      {
        "id": "3",
        "name": "Jason"
      }
    ]
  }
}
```
## References
- Apollo Server 
https://www.apollographql.com/docs/apollo-server/
- Prisma https://www.prisma.io/docs/getting-started/setup-prisma/-start-from-scratch-sql-node-mysql