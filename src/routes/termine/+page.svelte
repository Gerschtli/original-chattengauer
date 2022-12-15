<script lang="ts">
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
	<title>Termine Chattengauer - Musik aus der Region</title>
</svelte:head>

<figure>
	<img src="https://via.placeholder.com/400x150?text=Cooles+Bild" alt="" />
</figure>

<section class="mt-3 space-y-2">
	<header class="flex flex-col items-center px-4 pt-4">
		<h1 class="text-md text-center font-semibold uppercase text-slate-700">
			Auftritte & Veranstaltungen
			<span class="ml-1 inline-block h-2 w-2 rounded-sm bg-red-500" />
		</h1>
		<div class="my-1 w-1/3 border-b-2 border-red-500" />
	</header>

	<article class="px-4">
		<h2 class="my-3 text-xs font-semibold uppercase text-slate-700">November 2022</h2>
		{#each gigs as gig}
			<div class="py-2">
				<span class="inline-block h-2 w-2 rounded-sm bg-red-500" />
				{gig.day}, {gig.start} - {gig.end} Uhr
				<p class="pl-4 text-sm font-semibold">{gig.description}</p>
			</div>
		{/each}
		<h2 class="my-3 text-xs font-semibold uppercase text-slate-700">Dezember 2022</h2>
		{#each gigs as gig}
			<div class="py-2">
				<span class="inline-block h-2 w-2 rounded-sm bg-slate-400" />
				{gig.day}, {gig.start} - {gig.end} Uhr
				<p class="pl-4 text-sm font-semibold">{gig.description}</p>
			</div>
		{/each}
	</article>
</section>
