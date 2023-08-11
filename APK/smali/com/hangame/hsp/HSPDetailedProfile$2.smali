.class Lcom/hangame/hsp/HSPDetailedProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPDetailedProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPDetailedProfile$2;->this$0:Lcom/hangame/hsp/HSPDetailedProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPDetailedProfile$2;->val$callback:Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchContact(Lcom/hangame/hsp/util/contact/Contact;Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hsp/util/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile$2;->val$callback:Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;

    invoke-interface {v1, v0, p2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;->onNameLoad(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
