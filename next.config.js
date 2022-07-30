/** @type {import('next').NextConfig} */

const nextConfig = {
  reactStrictMode: true,
};

const withNextra = require("nextra")({
  theme: "nextra-theme-docs",
  themeConfig: "./theme.config.tsx",
  unstable_staticImage: true,
  unstable_flexsearch: true,
});

module.exports = withNextra({
  ...nextConfig,
});
