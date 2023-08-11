.class Lcom/hangame/hsp/util/contact/ContactProvider$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/util/contact/ContactProvider$2;

.field final synthetic val$fSearchedContact:Lcom/hangame/hsp/util/contact/Contact;

.field final synthetic val$result:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/util/contact/ContactProvider$2;Lcom/hangame/hsp/util/contact/Contact;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;->this$0:Lcom/hangame/hsp/util/contact/ContactProvider$2;

    iput-object p2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;->val$fSearchedContact:Lcom/hangame/hsp/util/contact/Contact;

    iput-object p3, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;->this$0:Lcom/hangame/hsp/util/contact/ContactProvider$2;

    iget-object v0, v0, Lcom/hangame/hsp/util/contact/ContactProvider$2;->val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;

    iget-object v1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;->val$fSearchedContact:Lcom/hangame/hsp/util/contact/Contact;

    iget-object v2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;->onSearchContact(Lcom/hangame/hsp/util/contact/Contact;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
