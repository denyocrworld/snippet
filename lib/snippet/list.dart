ListView.builder(
  itemCount: 3,
  physics: const ScrollPhysics(),
  itemBuilder: (BuildContext context, int index) {
    return Card(
      child: ListTile(
      leading: CircleAvatar(
      backgroundColor: Colors.grey[200],
      backgroundImage: const NetworkImage(
        "https://i.ibb.co/QrTHd59/woman.jpg",
      ),
    ),
    title: const Text("Jessica Doe"),
    subtitle: const Text("Programmer"),
    ),
  );
  },
),