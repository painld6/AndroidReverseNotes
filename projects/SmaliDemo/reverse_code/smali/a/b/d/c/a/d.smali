.class La/b/d/c/a/d;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/d/c/a/d$a;,
        La/b/d/c/a/d$b;
    }
.end annotation


# instance fields
.field private a:La/b/d/c/a/d$b;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:La/b/d/c/a/d$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    const/16 v0, 0xff

    iput v0, p0, La/b/d/c/a/d;->e:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, La/b/d/c/a/d;->g:I

    .line 77
    iput v0, p0, La/b/d/c/a/d;->h:I

    .line 1172
    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 1207
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1208
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0xa0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 494
    iget-object v0, p0, La/b/d/c/a/d;->m:La/b/d/c/a/d$a;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, La/b/d/c/a/d$a;

    invoke-direct {v0}, La/b/d/c/a/d$a;-><init>()V

    iput-object v0, p0, La/b/d/c/a/d;->m:La/b/d/c/a/d$a;

    .line 500
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->m:La/b/d/c/a/d$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, La/b/d/c/a/d$a;->a(Landroid/graphics/drawable/Drawable$Callback;)La/b/d/c/a/d$a;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    :try_start_0
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v0, v0, La/b/d/c/a/d$b;->A:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, La/b/d/c/a/d;->f:Z

    if-eqz v0, :cond_1

    .line 503
    iget v0, p0, La/b/d/c/a/d;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    :cond_1
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v0, v0, La/b/d/c/a/d$b;->E:Z

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-object v0, v0, La/b/d/c/a/d$b;->D:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v0, v0, La/b/d/c/a/d$b;->H:Z

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-object v0, v0, La/b/d/c/a/d$b;->F:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 512
    :cond_3
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v0, v0, La/b/d/c/a/d$b;->I:Z

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-object v0, v0, La/b/d/c/a/d$b;->G:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 516
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 517
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v0, v0, La/b/d/c/a/d$b;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 518
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 519
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 520
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 522
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 524
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    .line 525
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v0, v0, La/b/d/c/a/d$b;->C:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 527
    :cond_6
    iget-object v0, p0, La/b/d/c/a/d;->b:Landroid/graphics/Rect;

    .line 528
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 529
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_7
    iget-object v0, p0, La/b/d/c/a/d;->m:La/b/d/c/a/d$a;

    invoke-virtual {v0}, La/b/d/c/a/d$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 534
    nop

    .line 535
    return-void

    .line 533
    :catchall_0
    move-exception v0

    iget-object v1, p0, La/b/d/c/a/d;->m:La/b/d/c/a/d$a;

    invoke-virtual {v1}, La/b/d/c/a/d$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method

.method private c()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 106
    invoke-virtual {p0}, La/b/d/c/a/d;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method a()La/b/d/c/a/d$b;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected a(La/b/d/c/a/d$b;)V
    .locals 1
    .param p1, "state"    # La/b/d/c/a/d$b;

    .line 1155
    iput-object p1, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    .line 1157
    iget v0, p0, La/b/d/c/a/d;->g:I

    if-ltz v0, :cond_0

    .line 1158
    invoke-virtual {p1, v0}, La/b/d/c/a/d$b;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    .line 1159
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1160
    invoke-direct {p0, v0}, La/b/d/c/a/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, La/b/d/c/a/d;->h:I

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 1167
    return-void
.end method

.method final a(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 592
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0, p1}, La/b/d/c/a/d$b;->a(Landroid/content/res/Resources;)V

    .line 593
    return-void
.end method

.method a(Z)V
    .locals 11
    .param p1, "schedule"    # Z

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/d/c/a/d;->f:Z

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 540
    .local v0, "now":J
    const/4 v2, 0x0

    .line 541
    .local v2, "animating":Z
    iget-object v3, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1

    .line 542
    iget-wide v8, p0, La/b/d/c/a/d;->k:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_2

    .line 543
    cmp-long v10, v8, v0

    if-gtz v10, :cond_0

    .line 544
    iget v8, p0, La/b/d/c/a/d;->e:I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    iput-wide v6, p0, La/b/d/c/a/d;->k:J

    goto :goto_0

    .line 547
    :cond_0
    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v9, v8

    iget-object v8, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v8, v8, La/b/d/c/a/d$b;->A:I

    div-int/2addr v9, v8

    .line 549
    .local v9, "animAlpha":I
    rsub-int v8, v9, 0xff

    iget v10, p0, La/b/d/c/a/d;->e:I

    mul-int v8, v8, v10

    div-int/lit16 v8, v8, 0xff

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 550
    const/4 v2, 0x1

    .line 551
    .end local v9    # "animAlpha":I
    goto :goto_0

    .line 554
    :cond_1
    iput-wide v6, p0, La/b/d/c/a/d;->k:J

    .line 556
    :cond_2
    :goto_0
    iget-object v3, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 557
    iget-wide v8, p0, La/b/d/c/a/d;->l:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_5

    .line 558
    cmp-long v10, v8, v0

    if-gtz v10, :cond_3

    .line 559
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 560
    const/4 v3, 0x0

    iput-object v3, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 561
    const/4 v3, -0x1

    iput v3, p0, La/b/d/c/a/d;->h:I

    .line 562
    iput-wide v6, p0, La/b/d/c/a/d;->l:J

    goto :goto_1

    .line 564
    :cond_3
    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v4, v8

    iget-object v5, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v5, v5, La/b/d/c/a/d$b;->B:I

    div-int/2addr v4, v5

    .line 566
    .local v4, "animAlpha":I
    iget v5, p0, La/b/d/c/a/d;->e:I

    mul-int v5, v5, v4

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 567
    const/4 v2, 0x1

    .line 568
    .end local v4    # "animAlpha":I
    goto :goto_1

    .line 571
    :cond_4
    iput-wide v6, p0, La/b/d/c/a/d;->l:J

    .line 573
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 574
    iget-object v3, p0, La/b/d/c/a/d;->j:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 576
    :cond_6
    return-void
.end method

.method a(I)Z
    .locals 8
    .param p1, "index"    # I

    .line 430
    iget v0, p0, La/b/d/c/a/d;->g:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 431
    return v1

    .line 433
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 439
    .local v2, "now":J
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v0, v0, La/b/d/c/a/d$b;->B:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lez v0, :cond_3

    .line 440
    iget-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 443
    :cond_1
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 444
    iput-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 445
    iget v0, p0, La/b/d/c/a/d;->g:I

    iput v0, p0, La/b/d/c/a/d;->h:I

    .line 446
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v0, v0, La/b/d/c/a/d$b;->B:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, La/b/d/c/a/d;->l:J

    goto :goto_0

    .line 448
    :cond_2
    iput-object v5, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 449
    iput v4, p0, La/b/d/c/a/d;->h:I

    .line 450
    iput-wide v6, p0, La/b/d/c/a/d;->l:J

    goto :goto_0

    .line 452
    :cond_3
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 453
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 455
    :cond_4
    :goto_0
    if-ltz p1, :cond_7

    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v1, v0, La/b/d/c/a/d$b;->h:I

    if-ge p1, v1, :cond_7

    .line 456
    invoke-virtual {v0, p1}, La/b/d/c/a/d$b;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    .line 458
    iput p1, p0, La/b/d/c/a/d;->g:I

    .line 459
    if-eqz v0, :cond_6

    .line 460
    iget-object v1, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget v1, v1, La/b/d/c/a/d$b;->A:I

    if-lez v1, :cond_5

    .line 461
    int-to-long v4, v1

    add-long/2addr v4, v2

    iput-wide v4, p0, La/b/d/c/a/d;->k:J

    .line 463
    :cond_5
    invoke-direct {p0, v0}, La/b/d/c/a/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 465
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    goto :goto_1

    .line 466
    :cond_7
    iput-object v5, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    .line 467
    iput v4, p0, La/b/d/c/a/d;->g:I

    .line 469
    :goto_1
    iget-wide v0, p0, La/b/d/c/a/d;->k:J

    const/4 v4, 0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_8

    iget-wide v0, p0, La/b/d/c/a/d;->l:J

    cmp-long v5, v0, v6

    if-eqz v5, :cond_a

    .line 470
    :cond_8
    iget-object v0, p0, La/b/d/c/a/d;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    .line 471
    new-instance v0, La/b/d/c/a/c;

    invoke-direct {v0, p0}, La/b/d/c/a/c;-><init>(La/b/d/c/a/d;)V

    iput-object v0, p0, La/b/d/c/a/d;->j:Ljava/lang/Runnable;

    goto :goto_2

    .line 479
    :cond_9
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 482
    :goto_2
    invoke-virtual {p0, v4}, La/b/d/c/a/d;->a(Z)V

    .line 484
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 485
    return v4
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 598
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0, p1}, La/b/d/c/a/d$b;->a(Landroid/content/res/Resources$Theme;)V

    .line 599
    return-void
.end method

.method b()I
    .locals 1

    .line 417
    iget v0, p0, La/b/d/c/a/d;->g:I

    return v0
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 604
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 89
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 157
    iget v0, p0, La/b/d/c/a/d;->e:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    .line 100
    invoke-virtual {v1}, La/b/d/c/a/d$b;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 609
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {p0}, La/b/d/c/a/d;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, La/b/d/c/a/d$b;->d:I

    .line 611
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    return-object v0

    .line 613
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 581
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 299
    iget-object v0, p0, La/b/d/c/a/d;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 304
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 345
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->e()I

    move-result v0

    return v0

    .line 348
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 337
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->i()I

    move-result v0

    return v0

    .line 340
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 361
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->f()I

    move-result v0

    return v0

    .line 364
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 353
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->g()I

    move-result v0

    return v0

    .line 356
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 408
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    .line 409
    invoke-virtual {v0}, La/b/d/c/a/d$b;->j()I

    move-result v0

    goto :goto_1

    .line 408
    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 409
    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 135
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 138
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 111
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {v0}, La/b/d/c/a/d$b;->h()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    .local v0, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    :goto_0
    goto :goto_1

    .line 117
    .end local v1    # "result":Z
    :cond_1
    iget-object v1, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 120
    .end local v1    # "result":Z
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .line 123
    .restart local v1    # "result":Z
    :goto_1
    invoke-direct {p0}, La/b/d/c/a/d;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 125
    .local v2, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 126
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 127
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 129
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_3
    return v1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 372
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, La/b/d/c/a/d$b;->k()V

    .line 375
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 247
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v0, v0, La/b/d/c/a/d$b;->C:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "changed":Z
    iget-object v1, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 256
    const/4 v1, -0x1

    iput v1, p0, La/b/d/c/a/d;->h:I

    .line 257
    const/4 v0, 0x1

    .line 259
    :cond_0
    iget-object v1, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 261
    iget-boolean v1, p0, La/b/d/c/a/d;->f:Z

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    iget v2, p0, La/b/d/c/a/d;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    :cond_1
    iget-wide v1, p0, La/b/d/c/a/d;->l:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 266
    iput-wide v3, p0, La/b/d/c/a/d;->l:J

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_2
    iget-wide v1, p0, La/b/d/c/a/d;->k:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 270
    iput-wide v3, p0, La/b/d/c/a/d;->k:J

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_3
    if-eqz v0, :cond_4

    .line 274
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 276
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 619
    iget-boolean v0, p0, La/b/d/c/a/d;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 620
    invoke-virtual {p0}, La/b/d/c/a/d;->a()La/b/d/c/a/d$b;

    move-result-object v0

    .line 621
    .local v0, "clone":La/b/d/c/a/d$b;
    invoke-virtual {v0}, La/b/d/c/a/d$b;->m()V

    .line 622
    invoke-virtual {p0, v0}, La/b/d/c/a/d;->a(La/b/d/c/a/d$b;)V

    .line 623
    const/4 v1, 0x1

    iput-boolean v1, p0, La/b/d/c/a/d;->i:Z

    .line 625
    .end local v0    # "clone":La/b/d/c/a/d$b;
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 221
    iget-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 332
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    invoke-virtual {p0}, La/b/d/c/a/d;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, La/b/d/c/a/d$b;->b(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 319
    iget-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 322
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 308
    iget-object v0, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 311
    :cond_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 314
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 382
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 385
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "alpha"    # I

    .line 142
    iget-boolean v0, p0, La/b/d/c/a/d;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, La/b/d/c/a/d;->e:I

    if-eq v0, p1, :cond_2

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/d/c/a/d;->f:Z

    .line 144
    iput p1, p0, La/b/d/c/a/d;->e:I

    .line 145
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 146
    iget-wide v1, p0, La/b/d/c/a/d;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/b/d/c/a/d;->a(Z)V

    .line 153
    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2
    .param p1, "mirrored"    # Z

    .line 236
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v1, v0, La/b/d/c/a/d$b;->C:Z

    if-eq v1, p1, :cond_0

    .line 237
    iput-boolean p1, v0, La/b/d/c/a/d$b;->C:Z

    .line 238
    iget-object v1, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 239
    iget-boolean v0, v0, La/b/d/c/a/d$b;->C:Z

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/b/d/c/a/d$b;->E:Z

    .line 173
    iget-object v1, v0, La/b/d/c/a/d$b;->D:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_0

    .line 174
    iput-object p1, v0, La/b/d/c/a/d$b;->D:Landroid/graphics/ColorFilter;

    .line 175
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 162
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    iget-boolean v1, v0, La/b/d/c/a/d$b;->x:Z

    if-eq v1, p1, :cond_0

    .line 163
    iput-boolean p1, v0, La/b/d/c/a/d$b;->x:Z

    .line 164
    iget-object v1, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 165
    iget-boolean v0, v0, La/b/d/c/a/d$b;->x:Z

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 280
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 281
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 283
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 287
    iget-object v0, p0, La/b/d/c/a/d;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, La/b/d/c/a/d;->b:Landroid/graphics/Rect;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    :goto_0
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 293
    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 295
    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/b/d/c/a/d$b;->H:Z

    .line 184
    iget-object v1, v0, La/b/d/c/a/d$b;->F:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 185
    iput-object p1, v0, La/b/d/c/a/d$b;->F:Landroid/content/res/ColorStateList;

    .line 186
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, La/b/d/c/a/d;->a:La/b/d/c/a/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/b/d/c/a/d$b;->I:Z

    .line 193
    iget-object v1, v0, La/b/d/c/a/d$b;->G:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 194
    iput-object p1, v0, La/b/d/c/a/d$b;->G:Landroid/graphics/PorterDuff$Mode;

    .line 195
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 396
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 397
    .local v0, "changed":Z
    iget-object v1, p0, La/b/d/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    :cond_0
    iget-object v1, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 403
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 389
    iget-object v0, p0, La/b/d/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    return-void
.end method
