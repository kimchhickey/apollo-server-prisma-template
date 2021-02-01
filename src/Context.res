type request

type prisma = {user: Prisma.model}

type appContext = {
  req: request,
  prisma: prisma,
}

let prisma = Prisma.prismaClient()

let make = args => {...args, prisma: prisma}
