import "../styles/globals.css";
import type { AppProps } from "next/app";

export default function Documentation({ Component, pageProps }: AppProps) {
  return <Component {...pageProps} />;
}
