.class Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;
.super Ljava/lang/Object;


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mGnbView:Landroid/view/ViewGroup;

.field private mMainView:Landroid/view/ViewGroup;

.field private mTopBarView:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/hangame/hsp/ui/MainViewContainer;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/MainViewContainer;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mMainView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mMainView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mMainView:Landroid/view/ViewGroup;

    const-string v1, "hsp.main.topbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mTopBarView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mMainView:Landroid/view/ViewGroup;

    const-string v1, "hsp.main.gnb"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mGnbView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mMainView:Landroid/view/ViewGroup;

    const-string v1, "hsp.main.content"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mTopBarView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mGnbView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mMainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method
