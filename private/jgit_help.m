function jgit_help(cmd)
%JGIT_HELP Display jgit help
%   Copyright (c) 2013 Mark Mikofski
switch cmd
    case 'add'
        fprintf([ ...
            'ADD - Add file contents to the index\n', ...
            '[-u|--update] [--] [<pathspec>...]\n', ...
            'Reference: <a href="http://git-scm.com/docs/git-add">git-add</a>\n'])
    case 'branch'
        fprintf([ ...
            'BRANCH - List, create, move or delete branches\n', ...
            'jgit branch [-r|--remotes|-a|--all] [--list]\n', ...
            'jgit branch [--set-upstream|-t|--track|--no-track] [-f|--force] <branchname> [<start-point>]\n', ...
            'jgit branch (-m|--move|-M) [<oldbranch>] <newbranch>\n', ...
            'jgit branch (-d|--delete|-D) <branchname>...\n', ...
            'Reference: <a href="http://git-scm.com/docs/git-branch">git-branch</a>\n'])
    case 'checkout'
        fprintf([ ...
            'CHECKOUT - Checkout a branch or paths to the working tree\n', ...
            'git checkout [-f|--force] [<branch>]\n', ...
            'git checkout [-f|--force] [<commit>]\n', ...
            'git checkout [--set-upstream|-t|--track|--no-track] [-f|--force] [[-b|-B] <new_branch>] [<start_point>]\n', ...
            'git checkout [-f|--force|--ours|--theirs|-m] [<tree-ish>] [--] <paths>...\n', ...
            'git checkout [<tree-ish>] [--] [<paths>...]\n', ...
            'Reference: <a href="http://git-scm.com/docs/git-checkout">git-branch</a>\n'])
    case 'clone'
        fprintf([ ...
            'CLONE - Clone a repository into a new directory\n', ...
            'git clone [--bare] [-o <name>] [-b|--branch <name>]\n', ...
            '[--recursive|--recurse-submodules] [-n|--no-checkout]\n', ...
            '[--[no-]single-branch] [--] <repository> [<directory>]\n', ...
            ])
    otherwise
        fprintf([ ...
            'usage: jgit [-v|--version|-h|--help|-u|--update]\n', ...
            '       jgit <command> [<args>]\n', ...
            '\n', ...
            'The available JGit commands are:\n', ...
            '   add        Add file contents to the index\n', ...
            '   branch     List, create, or delete branches\n', ...
            '   checkout   Checkout a branch or paths to the working tree\n', ...
            '   clone      Clone a repository into a new directory\n', ...
            '   commit     Record changes to the repository\n', ...
            '   diff       Show changes between commits, commit and working tree, etc\n', ...
            '   fetch      Download objects and refs from another repository\n', ...
            '   init       Create an empty JGit repository or reinitialize an existing one\n', ...
            '   log        Show commit logs\n', ...
            '   merge      Join two or more development histories together\n', ...
            '   pull       Fetch from and integrate with another repository or a local branch\n', ...
            '   push       Update remote refs along with associated objects\n', ...
            '   status     Show the working tree status\n', ...
            '\n', ...
            'See "jgit help <command>" to read about a specific subcommand.\n', ...
            'Reference: <a href="http://git-scm.com/docs">git-docs</a>\n'])
end

end

