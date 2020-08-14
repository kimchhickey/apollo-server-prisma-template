
const { gql } = require('apollo-server')

const typeDefs = gql`
type User {
  id: ID!
  email: String!
  name: String
}

type Query {
  user(id: ID!): User
  users: [User]
}
`;

const resolvers = {
  Query: {
    user: (parent, args, ctx, info) => {
      return ctx.prisma.user.findOne({
        where: { id: Number(args.id) }
      })
    },
    users: (parent, args, ctx) => {
      return ctx.prisma.user.findMany()
    },
  },
}

module.exports = {
  typeDefs,
  resolvers,
}