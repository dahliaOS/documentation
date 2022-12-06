import type { ReactElement } from "react";
import type { AppProps } from "next/app";

import "../styles/globals.css";

export default function Nextra({
  Component,
  pageProps,
}: AppProps): ReactElement {
  return <Component {...pageProps} />;
}

//vercel cmon build
