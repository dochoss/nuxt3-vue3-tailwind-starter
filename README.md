# Based on the Nuxt 3 Minimal Starter

Look at the [Nuxt 3 documentation](https://nuxt.com/docs/getting-started/introduction) to learn more about Nuxt.

For styling, the template uses [Tailwind CSS](https://nuxt.com/docs)

It also uses the [Nuxt Icons](https://nuxt.com/modules/icon) module which has thousands of ready-to-use icons!

## Setup

Make sure to install the dependencies:

```bash
# yarn
yarn install

# npm
npm install

# pnpm
pnpm install --shamefully-hoist
```

## Development Server

Start the development server on http://localhost:3000

```
npm run dev
```

## Production

Build the application for production:

```
npm run build
```

Locally preview production build:

```
npm run preview
```

Build for static site deployment (through storage or Azure Static Web Apps):
```
npm run generate
```

## Deployment with Infrastructure as Code (IaC)
Use Azure Bicep to deploy, from `/infra` folder
```
az deployment group create --name <DEPLOYMENT_NAME> -g <RG_NAME> --parameters main.bicepparam
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
