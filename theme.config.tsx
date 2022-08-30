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
  project: {
    link: "https://dahliaOS.io",
    icon: () => {
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
  },
  projectChat: { link: "https://dahliaos.io/discord" },
  github: "https://github.com/dahliaOS",
  docsRepositoryBase: "https://github.com/dahliaOS/documentation",
  titleSuffix: " – dahliaOS",
  unstable_staticImage: true,
  gitTimestamp: "Last updated on",
  toc: {
    extraContent: () => {
      return (
        <a target="_blank" rel="noreferrer" href="https://dahliaos.io/donate">
          Support dahliaOS 💝 →
        </a>
      );
    },
    float: true,
  },
  feedback: { link: "Question? Give us feedback →", labels: "feedback" },
  navigation: { next: true, prev: true },
  unstable_flexsearch: true,
  darkMode: true,
  banner: {
    text: () => {
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
    key: "dahliaOS",
  },
  footer: {
    text: () => {
      return (
        <>
          <a href="https://www.apache.org/licenses/LICENSE-2.0">Copyright</a> -
          2019 - {new Date().getFullYear()} @{" "}
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
  },
  editLink: {
    text: "Edit this page on GitHub →",
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
};

export default config;
