.class final La/b/c/f/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:La/b/c/f/j;


# direct methods
.method constructor <init>(La/b/c/f/j;I)V
    .locals 1
    .param p1, "this$0"    # La/b/c/f/j;
    .param p2, "offset"    # I

    .line 43
    .local p0, "this":La/b/c/f/j$a;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, La/b/c/f/j$a;->e:La/b/c/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/c/f/j$a;->d:Z

    .line 44
    iput p2, p0, La/b/c/f/j$a;->a:I

    .line 45
    invoke-virtual {p1}, La/b/c/f/j;->c()I

    move-result v0

    iput v0, p0, La/b/c/f/j$a;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 50
    .local p0, "this":La/b/c/f/j$a;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, La/b/c/f/j$a;->c:I

    iget v1, p0, La/b/c/f/j$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":La/b/c/f/j$a;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    invoke-virtual {p0}, La/b/c/f/j$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, La/b/c/f/j$a;->e:La/b/c/f/j;

    iget v1, p0, La/b/c/f/j$a;->c:I

    iget v2, p0, La/b/c/f/j$a;->a:I

    invoke-virtual {v0, v1, v2}, La/b/c/f/j;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, La/b/c/f/j$a;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, La/b/c/f/j$a;->c:I

    .line 58
    iput-boolean v2, p0, La/b/c/f/j$a;->d:Z

    .line 59
    return-object v0

    .line 55
    .end local v0    # "res":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 64
    .local p0, "this":La/b/c/f/j$a;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, La/b/c/f/j$a;->d:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, La/b/c/f/j$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/c/f/j$a;->c:I

    .line 68
    iget v0, p0, La/b/c/f/j$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/c/f/j$a;->b:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/c/f/j$a;->d:Z

    .line 70
    iget-object v0, p0, La/b/c/f/j$a;->e:La/b/c/f/j;

    iget v1, p0, La/b/c/f/j$a;->c:I

    invoke-virtual {v0, v1}, La/b/c/f/j;->a(I)V

    .line 71
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
