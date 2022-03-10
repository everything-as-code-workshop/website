import Image from "next/image";

export const loader = ({ src, width }) =>
  `/_next/image?url=${src}&w=${width}&q=75`;

export default function Home() {
  return (
    <Image
      src="/sample.jpg"
      alt="sample"
      layout="fill"
      objectFit="cover"
      objectPosition="center"
      priority
      aria-hidden="true"
      loader={loader}
    />
  );
}
