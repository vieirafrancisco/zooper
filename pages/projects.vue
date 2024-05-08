<template>
  <main class="min-h-screen">
    <AppHeader class="mb-12" title="Projetos" :description="description" />
    <div class="space-y-4">
      <AppProjectCard
        v-for="(project, id) in projects"
        :key="id"
        :project="project"
      />
    </div>
  </main>
</template>

<script setup>
const description =
  "Trabalhei em projetos pequenos e grandes. Boa parte deles são projetos privados.";
useSeoMeta({
  title: "Projetos | Francisco",
  description,
});

const { data: projects } = await useAsyncData("projects-all", () =>
  queryContent("/projects").find()
);
</script>
