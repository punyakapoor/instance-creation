resource "oci_core_instance" "ubuntu_instance"{
    # Required
    availability_domain = "bwAI:PHX-AD-3"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaan6iysth4uk5rlr7sweqsh5i7t65nhwybvoqo5sivujf72degfe2q"
    shape = "VM.Standard1.1"
    source_details {
        source_id = "ocid1.image.oc1.phx.aaaaaaaazypn7r7lc3u6z7upbve3lvha3ugmb6ixelywry65rjqipqjqt7sq"
        source_type = "image"
    }

    # Optional
    display_name = "pk-terraform-master-instance"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.phx.aaaaaaaarv5vyyw4w7jg4m5kyufgk5otiayadb7fl7bjyeqxmxlfo3i2oafq"
    }
    metadata = {
        ssh_authorized_keys = "b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcnNhAAAAAwEAAQAAAQEAwXqIZlEJBXpEJtjgEvysAP3URQAUyIK1PORQeTwn34/RtXN9EA5t2ziJ/OZCg9lL5IbbIwOPPhvGfYD1VnCW/vyNykRzqz/LYRn+7ewb5gPVbhs5x183I/K9ELJWTZ5/sMpMwEPixGEBlx5SEBbz6NnHaUnsFG00uG4Tuj1ehbwkgZ/8hI0b2EhNYnMCcWuyvPOVRjHXyg6iaBrow5zy7SD3kXGtrd9Dkf8/QuFAgqbae96tnvQn7WkFtjDJvdTzcAyNZcV5uwMlmGVnbCCO8xs+GN+2qLx01TLkUJzl0of36edwCvsXFPXbABJLx0Edr1M1geuZQdJLm2Q9Dw56JwAAA8iy4qHfsuKh3wAAAAdzc2gtcnNhAAABAQDBeohmUQkFekQm2OAS/KwA/dRFABTIgrU85FB5PCffj9G1c30QDm3bOIn85kKD2UvkhtsjA48+G8Z9gPVWcJb+/I3KRHOrP8thGf7t7BvmA9VuGznHXzcj8r0QslZNnn+wykzAQ+LEYQGXHlIQFvPo2cdpSewUbTS4bhO6PV6FvCSBn/yEjRvYSE1icwJxa7K885VGMdfKDqJoGujDnPLtIPeRca2t30OR/z9C4UCCptp73q2e9CftaQW2MMm91PNwDI1lxXm7AyWYZWdsII7zGz4Y37aovHTVMuRQnOXSh/fp53AK+xcU9dsAEkvHQR2vUzWB65lB0kubZD0PDnonAAAAAwEAAQAAAQEAkTgNRO6x3MCmgpnppZas65mZR6kF8HHa4rdjh3uVWgGyn4Tta63I2vAW8hFJ/3iLtB1cQW2ciDuEwhKXEqgzTXP2YMj8IJ8jYeCHLcE4N27NNXWN6o0W8A5zxiJ1EJFUujc9YFoTzN4auXhyk80GidFcETUA01wcZAmLGRCS78C3XsKXtAj+JcTwvlkY6vVpTQ1y+G1ZJOv9s3m7PSTqvCdXThITRweZuME/EJtkmpQbDEopqyle6yZrgxAypM+XDZnWz9/qfssz1ZUAi6DtaWGlxBHhaisGWrXUxiukekNe1pb4LE4ct+I9eiLjWcb1u5W0ExBVHQsfXgF6qGQrQQAAAIBCrg/G5f6izTR2OEY54AbM7XW/837kZwfS0Wa1lIkTCG2feIouVNT6Lw1fZqxKtD8XqgdWk314dBdMeXLv/aUqIoyf8Fxtv9773zuCEP7W4qx5INv3UCXd824DTkX0P2bdHsATYl6b7lXTpJHrtzuLb3I6sQdK8Mxr5u+757pJiQAAAIEA4+fDmM+UeMlhZh91Tn27XFwc8mFL1DsDUVAK89FU5h4Uj0VfD7uZ+/TiVVnbfcFlIkFKDrYv73QVh4RiEm7Lo4af5h6JnuCowh8ejvmV10NcxWaG7jEz1WR4WJ6/NhW4JyORossPjuz4GIplaEisbUSdRg80q3QWJNQC1ZKcjXcAAACBANlUVN3pSAXFBBN4hfyf5dDH/o2hRaPe9KdqWxfKN8WGZVoVAQJM73+W5NqUQJgpuW5eAVQdzavUd6t8MwvXoKIk5QbnWzF9l9ElMQntPc2FrWKMcMG+IhBgEENq1dsXBiniFeY2nP5V8LiPIgepM9bns0htahobIdoaYoO3B+TRAAAADGluc3RhbmMxX2tleQECAwQFBg"
    } 
    preserve_boot_volume = false
}