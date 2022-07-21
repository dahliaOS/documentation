import { useTheme } from "next-themes";
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
          width="20"
          alt="dahliaOS"
        />
      </>
    );
  },
  projectChatLink: "https://dahliaos.io/discord",
  feedbackLabels: "feedback",
  projectLink: "https://dahliaOS.io",
  docsRepositoryBase: "https://github.com/dahliaOS/documentation",
  titleSuffix: " – dahliaOS",
  unstable_staticImage: true,
  floatTOC: true,
  feedbackLink: "Question? Give us feedback →",
  nextLinks: true,
  prevLinks: true,
  search: true,
  customSearch: null,
  darkMode: true,
  footer: true,
  bannerKey: "dahliaOS",
  banner: () => {
    return (
      <a
        href="https://dahliaOS.io/download"
        target="_blank"
        rel="noopener noreferrer"
        className="font-medium text-current no-underline"
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
            className="w-full inline-flex items-center no-underline text-current font-semibold grayscale"
            href="https://vercel.com/?utm_source=dahliaOS&utm_campaign=osss"
            target="_blank"
          >
            <span className="mr-1">Powered By</span>
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
        <span className="text-gray-600 font-normal hidden md:inline">
          Documentation
        </span>
      </>
    );
  },
  head: () => {
    return (
      <>
        <meta name="viewport" content="width=device-width" />
        <meta property="og:image" content="https://imgur.com/pqgjEpd.png" />
        <meta property="og:site_name" content="dahliaOS Documentation" />
        <meta
          property="og:title"
          content="dahliaOS Documentation"
          key="title"
        />
        <meta
          name="description"
          content="dahliaOS is a modern, secure, lightweight and responsive operating system, combining the best of GNU/Linux and Fuchsia OS."
        />
        <meta
          name="og:description"
          content="dahliaOS is a modern, secure, lightweight and responsive operating system, combining the best of GNU/Linux and Fuchsia OS."
        />
      </>
    );
  },
  tocExtraContent: () => {
    return (
      <a
        className="text-xs font-medium no-underline block text-gray-500 mb-2 hover:text-gray-900 dark:text-gray-400 dark:hover:text-gray-100"
        target="_blank"
        rel="noreferrer"
        href="https://dahliaos.io/donate"
      >
        Support dahliaOS 💝 →
      </a>
    );
  },
};

export default config;
