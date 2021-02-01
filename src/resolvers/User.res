let getUser = (_parent, args, {prisma}: Context.appContext, _info) => {
  prisma.user->Prisma.findUnique({
    "where": {
      "id": args["id"],
    },
  })
}

let getUsers = (_parent, _args, {prisma}: Context.appContext, _info) => {
  prisma.user->Prisma.findMany()
}

let createUser = (_parent, args, {prisma}: Context.appContext, _info) => {
  prisma.user->Prisma.create({
    "data": {
      "email": args["input"]["email"],
      "name": args["input"]["name"],
    },
  })
}
