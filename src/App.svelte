<script>
	export let name = 'world';
	let now_name = name;
	let number = 1;
	function changeName() {
		if(number % 2===1){
			now_name = name;
		}else {
			now_name = 'Svelte';
		}
		number = number + 1;
	}
</script>

<main>
	<h1 class="text-center text-red-600 font-mono text-3xl">
		Hello {now_name}!
	</h1>
	<br/>
	<p class="text-center">
		Visit the
		<a class="text-blue-600" href="https://svelte.dev/tutorial">
			Svelte tutorial
		</a>
		to learn how to build Svelte apps.
	</p>
	<p class="text-center">
		Visit the
		<a class="text-blue-600" href="https://windicss.org/guide/">
			Windi CSS guide
		</a>
		to learn how to Beautify apps.
	</p>
	<br/>
	<h2 class="text-center text-2xl font-mono text-red-600">
		Windi CSS Demo
	</h2>
	<div class="py-8 px-8 max-w-sm mx-auto bg-white rounded-xl shadow-md space-y-2 sm:(py-4 flex items-center space-y-0 space-x-6) ">
		<img class="block mx-auto h-24 rounded-full sm:(mx-0 flex-shrink-0)" src="/favicon.png" alt="Svelte Icon" />
		<div class="text-center space-y-2 sm:text-left">
			<div class="space-y-0.5">
				<p class="text-lg text-black font-semibold">Svelte Icon</p>
				<p class="text-gray-500 font-medium">Frontend Framework</p>
			</div>
			<button
					on:click={changeName}
					class="px-4 py-1 text-sm text-purple-600 font-semibold rounded-full border border-purple-200 hover:(text-white bg-purple-600 border-transparent) focus:(outline-none ring-2 ring-purple-600 ring-offset-2)">
				Click me
			</button>
		</div>
	</div>
</main>


<style windi:preflights:global windi:safelist:global>
</style>