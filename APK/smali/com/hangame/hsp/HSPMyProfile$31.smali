.class Lcom/hangame/hsp/HSPMyProfile$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMyProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$31;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMyProfile$31;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$31;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;->onUpload(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
