# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
-- Version control is a way to safely make changes to work in an "off the books" sort of way. Changes can be made to things un-permanently, until the changes are ready to go live.  Version control is useful because it also allows "save points," where changes can be saved and tracked (and also undone if necessary).

* What is a branch and why would you use one?
-- A branch is a copy of the file being worked on that can be edited before committing. There can be multiple branches of one file that multiple people can work on, and the changes made in each branch can be merged all back into one master file/branch. You use them as a safeguard to make sure you don't mess anything up on the master file.

* What is a commit? What makes a good commit message?
-- A commit is a submittal of a change.  Before something is committed, it remains behind the scenes.  Once committed, the change is live and creates a save point.  A good commit message should be very specific, so that when going back through the history of committed changes it is easy to see what was done when and find what one might be looking for.

* What is a merge conflict?
-- A merge conflict is when two versions of the same file are trying to merge together as one but something isn't letting them.  An example would be if the same line was changed in each version - in that case there would be a merge conflict because two different versions of the same line can't be combined.  Before merging, merge conflicts need to be resolved.