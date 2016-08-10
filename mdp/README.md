# MDP Docker container
Based on [MDP](https://github.com/visit1985/mdp) depends on the `ubuntu:16.04` image.
## Usage
To test the command you can enter:

    docker run --rm -it silgon/mdp
    
This command will run a demonstration file that is already inside the container. If you want to run your own file enter the following command:

    docker run --rm -v $(pwd):/mdp -it silgon/mdp mdp filename.md
    
This command will share the folder you are currently in with the directory `/mdp` inside the container. Here lies the working directory of the container, then your `filename.md` is the name of the presentation which must be inside your current directory.
