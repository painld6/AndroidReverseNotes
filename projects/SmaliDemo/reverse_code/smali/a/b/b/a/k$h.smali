.class La/b/b/a/k$h;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 966
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 967
    iput-object p1, p0, La/b/b/a/k$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 968
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 994
    iget-object v0, p0, La/b/b/a/k$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 999
    iget-object v0, p0, La/b/b/a/k$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 972
    new-instance v0, La/b/b/a/k;

    invoke-direct {v0}, La/b/b/a/k;-><init>()V

    .line 973
    .local v0, "drawableCompat":La/b/b/a/k;
    iget-object v1, p0, La/b/b/a/k$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, La/b/b/a/i;->a:Landroid/graphics/drawable/Drawable;

    .line 974
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 979
    new-instance v0, La/b/b/a/k;

    invoke-direct {v0}, La/b/b/a/k;-><init>()V

    .line 980
    .local v0, "drawableCompat":La/b/b/a/k;
    iget-object v1, p0, La/b/b/a/k$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, La/b/b/a/i;->a:Landroid/graphics/drawable/Drawable;

    .line 981
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 986
    new-instance v0, La/b/b/a/k;

    invoke-direct {v0}, La/b/b/a/k;-><init>()V

    .line 987
    .local v0, "drawableCompat":La/b/b/a/k;
    iget-object v1, p0, La/b/b/a/k$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 988
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, La/b/b/a/i;->a:Landroid/graphics/drawable/Drawable;

    .line 989
    return-object v0
.end method
