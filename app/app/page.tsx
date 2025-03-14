'use client'

import { ModeToggle } from "@/components/mode-toggle";

export default function Home() {
  return (
    <div className="h-screen flex items-center justify-center">
      <div className="flex flex-col gap-y-3">
        <pre>nginx-next-dock</pre>
        <div className="mx-auto">
          <ModeToggle />
        </div>
      </div>
    </div>
  );
}
