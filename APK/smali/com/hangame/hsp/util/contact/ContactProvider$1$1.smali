.class Lcom/hangame/hsp/util/contact/ContactProvider$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/util/contact/ContactProvider$1;

.field final synthetic val$fContacts:Ljava/util/List;

.field final synthetic val$fResult:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/util/contact/ContactProvider$1;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;->this$0:Lcom/hangame/hsp/util/contact/ContactProvider$1;

    iput-object p2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;->val$fContacts:Ljava/util/List;

    iput-object p3, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;->val$fResult:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;->this$0:Lcom/hangame/hsp/util/contact/ContactProvider$1;

    iget-object v0, v0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;

    iget-object v1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;->val$fContacts:Ljava/util/List;

    iget-object v2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;->val$fResult:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;->onLoadContacts(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
