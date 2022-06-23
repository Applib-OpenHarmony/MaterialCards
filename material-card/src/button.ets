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

export namespace button {
  export class Model {
    private isText : boolean =false
    private buttonId : number = 0
    private buttonColor : string | Resource | Color = Color.Blue
    private buttonText  : string = undefined
    private buttonTextColor : string | Resource | Color = Color.White
    private buttonType : ButtonType = ButtonType.Capsule
    private buttonHeight : number = 90
    private buttonWidth : number = 30
    private fontSize : number = 15
    constructor(
                buttonText : string ,
                isText : boolean  = false ,
                buttonTextColor : string | Resource | Color = Color.White ,
                buttonColor : string | Resource | Color = Color.Blue,
                fontSize : number =15 ,
                buttonType: ButtonType =ButtonType.Capsule,
                buttonHeight :number = 80,
                buttonWidth : number=30){
      this.isText= isText
      this.buttonText = buttonText
      this.buttonTextColor = buttonTextColor
      this.buttonColor= buttonColor
      this.fontSize = fontSize
      this.buttonType =buttonType
      this.buttonHeight = buttonHeight
      this.buttonWidth =buttonWidth
    }
//    onClick(hi : string) {
//      console.log(hi)
//    }

    setIsText(isText : boolean){
      this.isText = isText
      return this
    }
    getIsText() : boolean{
      return this.isText
    }
    getButtonId() : number{
      return this.buttonId
    }
    setButtonText(buttonText : string){
      this.buttonText = buttonText
      return this
    }
    getButtonText() : string {
      return this.buttonText
    }
    setButtonTextColor(buttonTextColor : string | Resource | Color) {
      this.buttonTextColor = buttonTextColor != null ? buttonTextColor : Color.White
      return this
    }
    getButtonTextColor() : string | Resource | Color{
      return this.buttonTextColor
    }
    setButtonColor(buttonColor : string | Resource | Color) {
      this.buttonColor = buttonColor != null ? buttonColor : Color.Blue
      return this
    }
    getButtonColor() : string | Resource | Color{
      return this.buttonColor
    }
    setFontSize(fontSize : number) {
      this.fontSize = fontSize == null ? 15 : fontSize
      return this
    }
    getFontSize() : number {
      return this.fontSize
    }
    setButtonHeight(buttonHeight : number){
      this.buttonHeight = (buttonHeight == null) ? 35 : this.buttonHeight
      return this
    }
    getButtonHeight() : number {
      return this.buttonHeight
    }
    setButtonWidth(buttonWidth : number){
      this.buttonWidth = (buttonWidth == null) ? 90 : this.buttonWidth
      return this
    }
    getButtonWidth() : number {
      return this.buttonWidth
    }
    setButtonType(buttonType : ButtonType){
      this.buttonType = (buttonType != null) ? buttonType : ButtonType.Capsule
      return this
    }
    getButtonType() : ButtonType{
      return this.buttonType
    }

  }
}