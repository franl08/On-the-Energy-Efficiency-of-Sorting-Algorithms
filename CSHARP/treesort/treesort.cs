public class TreeNode
{
    public int value;
    public TreeNode left;
    public TreeNode right;

    public TreeNode(int value)
    {
        this.value = value;
    }
}

public static void Treesort(int[] array)
{
    TreeNode root = null;

    // build the binary search tree
    for (int i = 0; i < array.Length; i++)
    {
        root = Insert(root, array[i]);
    }

    // traverse the tree in order to obtain the sorted array
    Traverse(root, array, 0);
}

private static TreeNode Insert(TreeNode root, int value)
{
    if (root == null)
    {
        return new TreeNode(value);
    }

    if (value < root.value)
    {
        root.left = Insert(root.left, value);
    }
    else
    {
        root.right = Insert(root.right, value);
    }

    return root;
}

private static int Traverse(TreeNode root, int[] array, int index)
{
    if (root == null)
    {
        return index;
    }

    index = Traverse(root.left, array, index);
    array[index] = root.value;
    index++;
    index = Traverse(root.right, array, index);

    return index;
}
