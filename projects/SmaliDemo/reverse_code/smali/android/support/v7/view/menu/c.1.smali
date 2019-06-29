.class abstract Landroid/support/v7/view/menu/c;
.super Landroid/support/v7/view/menu/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/view/menu/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/b/c/c/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/b/c/c/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/d;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 43
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    instance-of v0, p1, La/b/c/c/a/b;

    if-eqz v0, :cond_2

    .line 44
    move-object v0, p1

    check-cast v0, La/b/c/c/a/b;

    .line 47
    .local v0, "supportMenuItem":La/b/c/c/a/b;
    iget-object v1, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, La/b/c/f/b;

    invoke-direct {v1}, La/b/c/f/b;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    .line 52
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 54
    .local v1, "wrappedItem":Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 56
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/view/menu/x;->a(Landroid/content/Context;La/b/c/c/a/b;)Landroid/view/MenuItem;

    move-result-object v1

    .line 57
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    return-object v1

    .line 62
    .end local v0    # "supportMenuItem":La/b/c/c/a/b;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_2
    return-object p1
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 66
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    instance-of v0, p1, La/b/c/c/a/c;

    if-eqz v0, :cond_2

    .line 67
    move-object v0, p1

    check-cast v0, La/b/c/c/a/c;

    .line 70
    .local v0, "supportSubMenu":La/b/c/c/a/c;
    iget-object v1, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, La/b/c/f/b;

    invoke-direct {v1}, La/b/c/f/b;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    .line 74
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    .line 76
    .local v1, "wrappedMenu":Landroid/view/SubMenu;
    if-nez v1, :cond_1

    .line 77
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/view/menu/x;->a(Landroid/content/Context;La/b/c/c/a/c;)Landroid/view/SubMenu;

    move-result-object v1

    .line 78
    iget-object v2, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    return-object v1

    .line 82
    .end local v0    # "supportSubMenu":La/b/c/c/a/c;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_2
    return-object p1
.end method

.method final a(I)V
    .locals 3
    .param p1, "groupId"    # I

    .line 96
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/internal/view/SupportMenuItem;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 105
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 109
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method final b()V
    .locals 1

    .line 87
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 3
    .param p1, "id"    # I

    .line 112
    .local p0, "this":Landroid/support/v7/view/menu/c;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/internal/view/SupportMenuItem;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 121
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 126
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method
