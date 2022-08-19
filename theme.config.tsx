import { useTheme } from "nextra-theme-docs";
import { useState, useEffect } from "react";
import Vercel from "./components/Vercel";

const useDark = () => {
  const { resolvedTheme } = useTheme();
  const [isDark, setIsDark] = useState(false);
  useEffect(() => {
    setIsDark(resolvedTheme === "dark");
    return () => {
      false;
    };
  }, [resolvedTheme]);
  return isDark;
};

const config = {
  projectLinkIcon: () => {
    const isDark = useDark();
    return (
      <>
        <img
          src={`/logos/${isDark ? "dark" : "light"}Logomark.svg`}
          width="22"
          alt="dahliaOS"
        />
      </>
    );
  },
  projectChatLink: "https://dahliaos.io/discord",
  github: "https://github.com/dahliaOS",
  feedbackLabels: "feedback",
  projectLink: "https://dahliaOS.io",
  docsRepositoryBase: "https://github.com/dahliaOS/documentation",
  titleSuffix: " – dahliaOS",
  unstable_staticImage: true,
  gitTimestamp: "Last updated on",
  floatTOC: true,
  feedbackLink: "Question? Give us feedback →",
  nextLinks: true,
  prevLinks: true,
  search: true,
  unstable_flexsearch: true,
  darkMode: true,
  footer: true,
  bannerKey: "dahliaOS",
  banner: () => {
    return (
      <a
        href="https://dahliaOS.io/download"
        target="_blank"
        rel="noopener noreferrer"
        title="Download the latest version of dahliaOS"
      >
        dahliaOS Linux 220222 is out →
      </a>
    );
  },
  footerText: () => {
    return (
      <>
        Copyright - 2019 - {new Date().getFullYear()} @{" "}
        <a href="mailto:contact@dahliaos.io">The dahliaOS Authors</a>
        <p>
          <a
            href="https://vercel.com/?utm_source=dahliaOS&utm_campaign=osss"
            target="_blank"
            rel="noreferrer"
          >
            <span>Powered By</span>
            <span>
              <Vercel />
            </span>
          </a>
        </p>
      </>
    );
  },
  footerEditLink: () => {
    return "Edit this page on GitHub →";
  },
  logo: () => {
    const isDark = useDark();
    return (
      <>
        <img
          src={`/logos/${isDark ? "dark" : "light"}Logotype.svg`}
          width="120"
          alt="dahliaOS"
          style={{ marginRight: "10px" }}
        />
        <span>Documentation</span>
      </>
    );
  },
  head: () => {
    return (
      <>
        <meta charSet="UTF-8" />
        <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-title" content="Documentation" />
        <link rel="canonical" href="https://docs.dahliaos.io" />
        <meta name="viewport" content="width=device-width" />
        <meta property="og:image" content="https://imgur.com/pqgjEpd.png" />
        <meta property="og:site_name" content="dahliaOS" />
        <meta property="og:title" content="Documentation" key="title" />
        <meta name="description" content="Documentation for dahliaOS." />
        <meta name="og:description" content="Documentation for dahliaOS." />
        <meta property="og:url" content="https://docs.dahliaos.io" />
        <meta name="theme-color" content="#ff3d00" />
      </>
    );
  },
  tocExtraContent: () => {
    return (
      <a target="_blank" rel="noreferrer" href="https://dahliaos.io/donate">
        Support dahliaOS 💝 →
      </a>
    );
  },
};

export default config;
