.class Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;


# direct methods
.method constructor <init>(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$1;->this$0:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    return-void
.end method
