.class Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

.field final synthetic val$ansMsg1:Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;->this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    iput-object p2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;->val$ansMsg1:Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;->this$1:Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->access$000(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MASHUP"

    iget-object v3, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;->val$ansMsg1:Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;

    iget-object v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;->onDetailedProfileLoad(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
