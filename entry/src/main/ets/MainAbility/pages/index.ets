/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { button, CardModel, CardType, MediaIconPosition, MaterialCard } from '@ohos/material-card'

@Entry
@Component
struct Index {
  private model: CardModel = new CardModel('Title', 'SubTitle')
  private subHead: CardModel = new CardModel('Title', 'Subtitle goes here')
  private squareOutlinedCard: CardModel = new CardModel('Breaking Podcast', 'Size of Song')
  private rightImage: CardModel = new CardModel('Play Relaxing Songs', 'Song Name')
  private rightImageFilledCard: CardModel = new CardModel('Movie Name', 'SubHead')
  scroller: Scroller = new Scroller()

  private onButtonClick(button: button.Model) {
    console.log(button.getButtonText())
  }
  private onCardClick() {
    console.log("card")
  }
  private Elevated(model: CardModel) {
    model.setButtons([new button.Model('Button1', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button2', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button3', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button4', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Buttn5', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100)])
    model.setActions([new button.Model('Action1', false, '#ffffffff', '#ff008061', 15, ButtonType.Capsule, 30, 90),
    new button.Model('Action2', false, '#ffffffff', '#ff008061', 15, ButtonType.Capsule, 30, 90),
    new button.Model('Action3', false, '#ffffffff', '#ff008061', 15, ButtonType.Capsule, 30, 90)])
    model.setCardBackGroundColor('#f8ffa4a4')
    model.setTitleFontColor(Color.White)
    model.setSubTitleFontColor(Color.White)
    model.setCardType(CardType.Elevated)
    model.setLeadingIcon($r('app.media.disneylogo'))
    model.setMediaIcon($r('app.media.brave'))
    model.setCardHeight("520vp")
    model.setShowDivider(true)
    model.setButtonHeader('buttons')
    model.setSupportingText("Determined to make her own path in life, Princess Merida defies " +
    "a custom that brings chaos to her kingdom. Granted one wish, Merida ")
    model.setShadowRadius(50)
    model.setShadowColor('#b418070e')
    model.setBorderRadius("8vp")
    model.setSubTitleFontSize("20fp")
    model.setTitleFontSize("25fp")
    model.setTitleFontWeight(FontWeight.Bolder)
    model.setLeadingIconWidth("70vp")
    model.setButtonClick(this.onButtonClick)
    model.setActionClick(this.onButtonClick)
    model.setCardClick(this.onCardClick)
  }

  private SubHead(model: CardModel) {
    model.reset()
    model.setCardType(CardType.Outlined)
    model.setCardBorderWidth("3vp")
    model.setLeadingIcon($r('app.media.disneylogo'))
    model.setCardHeight("90vp")
    model.setCardWidth("300vp")
    model.setCardBackGroundColor('#ffece5e5')
    model.setLeadingIconHeight("64vp")
    model.setLeadingIconWidth("64vp")
  }

  private SquareOutlinedCard(model: CardModel) {
    model.setMediaIconPosition(MediaIconPosition.Top)
    model.setCardType(CardType.Outlined)
    model.setCardHeight("250vp")
    model.setCardWidth("200vp")
    model.setMediaIconWidth("200vp")
    model.setMediaIconHeight("180vp")
    model.setMediaIcon($r('app.media.music'))
    model.setMediaIconHeight("140vp")
    model.setTitleFontSize("22fp")
    model.setBorderRadius("4vp")
    model.setCardBackGroundColor(Color.Yellow)
  }

  private RightImageElevatedCard(model: CardModel) {
    model.setMediaIconPosition(MediaIconPosition.Right)
    model.setCardType(CardType.Elevated)
    model.setCardHeight("180vp")
    model.setCardWidth("300vp")
    model.setMediaIconWidth("90vp")
    model.setMediaIconHeight("90vp")
    model.setMediaIcon($r('app.media.music'))
    model.setShadowColor(Color.Black)
    model.setShadowRadius(35)
    model.setSubTitleFontSize("20fp")
    model.setSubTitleFontWeight(FontWeight.Medium)
    model.setActions([new button.Model('Get Started', false, Color.White, Color.Black, 15, ButtonType.Capsule, 30, 110),
    new button.Model('Song Details', true, Color.Black, Color.Green, 15, ButtonType.Capsule, 30, 110)])
    model.setBorderRadius("4vp")
    model.setButtonClick(this.onButtonClick)
    model.setActionClick(this.onButtonClick)
  }

  private RightImageFilledCard(model: CardModel) {
    model.setMediaIconPosition(MediaIconPosition.Right)
    model.setCardHeight("180vp")
    model.setCardWidth("300vp")
    model.setMediaIconWidth("90vp")
    model.setMediaIconHeight("90vp")
    model.setMediaIcon($r('app.media.disneylogo'))
    model.setSubTitleFontSize("20fp")
    model.setSubTitleFontWeight(FontWeight.Medium)
    model.setActions([new button.Model('Get Started', false, Color.Black, Color.White, 15, ButtonType.Capsule, 30, 110),
    new button.Model('Song Details', true, Color.Black, Color.Green, 15, ButtonType.Capsule, 30, 110)])
    model.setBorderRadius("8vp")
    model.setTitleFontColor(Color.White)
    model.setSubTitleFontColor(Color.White)
    model.setCardBackGroundColor('#ffff1ccc')
    model.setButtonClick(this.onButtonClick)
    model.setActionClick(this.onButtonClick)
  }
  aboutToAppear() {
    //Elevated Card
    this.Elevated(this.model)
    //Subhead-Outlined
    this.SubHead(this.subHead)
    //Square Outlined Card
    this.SquareOutlinedCard(this.squareOutlinedCard)
    //Right Sided Elevated Card
    this.RightImageElevatedCard(this.rightImage)
    //Right Sided Filled Card
    this.RightImageFilledCard(this.rightImageFilledCard)
  }

  build() {
    Scroll(this.scroller) {
      Column() {
        Blank(40)
        MaterialCard({
          model: this.model
        })
        Blank(40)
        MaterialCard({
          model: this.subHead
        })
        Blank(40)
        MaterialCard({
          model: this.squareOutlinedCard
        })
        Blank(40)
        MaterialCard({
          model: this.rightImage
        })
        Blank(40)
        MaterialCard({
          model: this.rightImageFilledCard
        })
        Blank(40)
      }.width('100%')
    }
    .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    .scrollBarColor(Color.Gray).scrollBarWidth(30)
  }
}