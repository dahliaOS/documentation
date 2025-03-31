import { ImageResponse } from "@vercel/og";
import { NextRequest } from "next/server";
import Image from "next/image";

export const config = {
  runtime: "edge",
};

export default function handler(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);

    const hasTitle = searchParams.has("title");
    const title = hasTitle
      ? searchParams.get("title")?.slice(0, 100)
      : "dahliaOS Docs article";
    const hasDesc = searchParams.has("desc");
    const desc = hasDesc
      ? searchParams.get("desc")?.slice(0, 100)
      : "Check out the docs article.";

    return new ImageResponse(
      (
        <div
          style={{
            backgroundColor: "white",
            backgroundSize: "150px 150px",
            height: "100%",
            width: "100%",
            display: "flex",
            flexDirection: "column",
            padding: "100px",
          }}
        >
          <div
            style={{
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              flexDirection: "row",
            }}
          >
            <Image
              alt="dahliaOS Logotype"
              width={300}
              src="https://raw.githubusercontent.com/dahliaOS/brand/62d9cf35262982255fd85545e0185b9e39642fb1/dahliaOS/logotype/svg/logotype-light.svg"
            />
            <p
              style={{
                fontSize: 45,
                fontStyle: "normal",
                fontWeight: "bold",
                color: "black",
                marginLeft: 20,
              }}
            >
              Docs
            </p>
          </div>
          <p
            style={{
              fontSize: 45,
              fontStyle: "normal",
              letterSpacing: "-0.025em",
              color: "black",
              lineHeight: 1.4,
              whiteSpace: "pre-wrap",
            }}
          >
            {title}
          </p>
          <p
            style={{
              fontSize: 30,
              fontStyle: "normal",
              letterSpacing: "-0.025em",
              color: "black",
              lineHeight: 1.4,
              whiteSpace: "pre-wrap",
              marginTop: -15,
            }}
          >
            {desc}
          </p>
        </div>
      ),
      {
        width: 1200,
        height: 630,
      },
    );
  } catch (e: any) {
    return new Response("Failed to generate the image", {
      status: 500,
    });
  }
}
