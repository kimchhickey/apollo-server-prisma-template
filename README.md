# Apollo Server + Prisma Template

## How to use
---
### 0. Prerequisites
* Node.js installed on your machine
* a MySQL database server running

### 1. Download this template and install dependencies
Clone this repository:
```
git@github.com:kimchhickey/apollo-prisma-server-template.git
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

### Generate Prisma Client
```
npx prisma generate
```

### Run Apollo Server
```
npm run start
```
