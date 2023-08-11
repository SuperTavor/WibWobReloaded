.class Lcom/toastgamenew/hsp/auth/login/LoginUtil$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;


# direct methods
.method constructor <init>(Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1$1;->this$0:Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1$1;->this$0:Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;

    iget-object v0, v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$callback:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onProcessError(Lorg/json/JSONObject;)V

    return-void
.end method
