<script>
	import { ChevronRight } from 'lucide-svelte';
</script>

<section class="mt-3 space-y-2">
	<header class="flex flex-col items-center px-4 pt-4">
		<h1 class="text-md text-center font-semibold uppercase text-slate-700">
			Aktuelles & Ankündigungen
			<span class="ml-1 inline-block h-2 w-2 rounded-sm bg-red-500" />
		</h1>
		<div class="my-1 w-1/3 border-b-2 border-red-500" />
	</header>

	{#each ['bg-red-200', 'bg-slate-200', 'bg-slate-100'] as color}
		<article class="{color} p-4">
			<figure class="relative m-3 mb-3 overflow-hidden">
				<img
					src="https://www.original-chattengauer.de/uploads/imgs/221216_adventskonzert_gruppenbild.jpg"
					alt=""
				/>
				<figcaption
					class="absolute inset-x-0 bottom-0 p-3 text-sm font-semibold text-slate-200 backdrop-blur"
				>
					Unser Adventskonzert am 17.12.
				</figcaption>
			</figure>
			<p class="text-sm text-slate-600">
				Mit einer vollen Kirche konnten wir unser Jahr 2023 gebührend ausklingen lassen. Für unsere
				jüngsten Mitglieder war dies das erste Adventskonzert von vielen, die noch kommen werden!
			</p>
			<footer class="text-right text-sm">
				<button class="font-bold text-red-500">
					Mehr Bilder <ChevronRight class="inline-block align-middle" size={16} />
				</button>
			</footer>
		</article>
	{/each}
</section>
