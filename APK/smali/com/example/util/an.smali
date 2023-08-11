.class Lcom/example/util/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/util/am;


# direct methods
.method constructor <init>(Lcom/example/util/am;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/an;->a:Lcom/example/util/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->b(Lcom/example/util/YWPMyPuniHelper;)V

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;Z)Z

    :goto_0
    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/util/YWPMyPuniHelper;->b(Lcom/example/util/YWPMyPuniHelper;Z)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->c(Lcom/example/util/YWPMyPuniHelper;)V

    goto :goto_0
.end method
