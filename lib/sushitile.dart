/* child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            color: tabIndex == index
                                ? Color.fromARGB(255, 252, 189, 189)
                                : Color.fromRGBO(255, 233, 233, 1),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Color.fromARGB(255, 252, 189, 189),
                                width: 2)),
                        child: Center(
                            child: Text(
                          "${categories[index]}",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  );
                },
              ), */