.class final Lcom/example/sgf/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/example/sgf/MainActivity;->a()Lcom/example/sgf/MainActivity;

    invoke-static {}, Lcom/example/sgf/MainActivity;->a()Lcom/example/sgf/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/example/sgf/j;->a:Ljava/lang/String;

    const-string v2, "http://yo-kai-ppunippuni.com"

    invoke-static {v0, v1, v2}, Lcom/example/util/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/example/sgf/MainActivity;->mKakaoLinkResult:Z

    return-void
.end method
