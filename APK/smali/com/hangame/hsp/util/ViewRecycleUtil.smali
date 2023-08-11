.class public final Lcom/hangame/hsp/util/ViewRecycleUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/ViewRecycleUtil;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/hangame/hsp/util/ViewRecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/ViewRecycleUtil;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearAnimation()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method private static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
