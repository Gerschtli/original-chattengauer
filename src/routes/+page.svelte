<script lang="ts">
	import { ChevronRight, Mail, Phone, User } from 'lucide-svelte';

	const gigs: {
		weekday: string;
		day: string;
		start: string;
		end: string;
		description: string;
	}[] = [
		{
			weekday: 'Mi',
			day: '14.12.2022',
			start: '17:00',
			end: '18:00',
			description: 'Kid.Chatts (2021 und 2022) Grundschul-Weihnachtskonzert',
		},
		{
			weekday: 'Fr',
			day: '16.12.2022',
			start: '20:00',
			end: '22:00',
			description: 'Mitgliederversammlung F 26',
		},
		{
			weekday: 'Mo',
			day: '19.12.2022',
			start: '17:00',
			end: '18:00',
			description: 'Kid.Chatts (2021 und 2022) Grundschul-Weihnachtskonzert',
		},
	];
</script>

<svelte:head>
	<title>Chattengauer - Musik aus der Region</title>
</svelte:head>

<figure>
	<img src="https://via.placeholder.com/400x150?text=Cooles+Bild" alt="" />
</figure>

<section class="flex flex-col gap-2 p-4">
	<p class="text-sm">
		Du spielst ein Instrument oder möchtest es lernen? Bei uns bist du richtig aufgehoben mit
		unseren verschiedenen Orchestern: Eine
		<a class="text-blue-700" href="/blaeserklasse">Bläserklasse</a>
		für unsere jüngsten Mitglieder und das
		<a class="text-blue-700" href="/orchester">Hauptorchester</a>.
	</p>
</section>

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
					class=""
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
				<span class="ml-1 inline-block h-2 w-2 rounded-sm bg-red-500" />
			</p>
			<footer class="text-right text-sm">
				<a href="#" class="font-bold text-red-500">
					Mehr Bilder <ChevronRight class="inline-block align-middle" size={16} />
				</a>
			</footer>
		</article>
	{/each}
</section>

<section class="mt-3 space-y-2">
	<header class="flex flex-col items-center px-4 pt-4">
		<h1 class="text-md text-center font-semibold uppercase text-slate-700">
			Auftritte & Veranstaltungen
			<span class="ml-1 inline-block h-2 w-2 rounded-sm bg-red-500" />
		</h1>
		<div class="my-1 w-1/3 border-b-2 border-red-500" />
	</header>

	<article class="px-4">
		{#each gigs as gig}
			<div class="py-2">
				<span class="inline-block h-2 w-2 rounded-sm bg-red-500" />
				{gig.day}, {gig.start} - {gig.end} Uhr
				<p class="pl-4 text-sm font-semibold">&mdash; {gig.description}</p>
			</div>
		{/each}

		<footer class="text-right text-sm">
			<a href="#" class="font-bold text-red-500">
				Alle Termine <ChevronRight class="inline-block align-middle" size={16} />
			</a>
		</footer>
	</article>
</section>
