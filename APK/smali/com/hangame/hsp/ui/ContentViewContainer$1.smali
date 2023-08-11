.class Lcom/hangame/hsp/ui/ContentViewContainer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/ContentViewContainer;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/ContentViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/ContentViewContainer$1;->this$0:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer$1;->this$0:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->closeView()V

    return-void
.end method
